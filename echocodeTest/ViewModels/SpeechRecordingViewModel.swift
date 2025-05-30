//
//  SpeechRecordingViewModel.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import Foundation
import Speech
import AVFoundation
import Observation

@Observable
class SpeechRecordingViewModel {
    private let audioEngine = AVAudioEngine()
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let speechRecognizer = SFSpeechRecognizer()
    
    var transcribedText: String = ""
    var isRecording = false
    var isRecordingFinished = false
    var waveformLevels: [Float] = Array(repeating: 0.2, count: 20)
    var audioLevel: Float = 0.0
    
    func startTranscribing() {
        SFSpeechRecognizer.requestAuthorization { authStatus in
            DispatchQueue.main.async {
                guard authStatus == .authorized else {
                    self.transcribedText = "Speech recognition not authorized"
                    return
                }
                self.startRecording()
            }
        }
    }
    
    func stopTranscribing() {
        audioEngine.stop()
        recognitionRequest?.endAudio()
        recognitionTask?.cancel()
        isRecording = false
        isRecordingFinished = true
    }
    
    func startRecording() {
        if audioEngine.isRunning {
            stopTranscribing()
            return
        }
        
        do {
            recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
            guard let recognitionRequest = recognitionRequest else {
                transcribedText = "Unable to create request"
                return
            }
            
            let audioSession = AVAudioSession.sharedInstance()
            try audioSession.setCategory(.record, mode: .measurement, options: .duckOthers)
            try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
            
            let inputNode = audioEngine.inputNode
            let recordingFormat = inputNode.outputFormat(forBus: 0)
            
            inputNode.removeTap(onBus: 0)
            inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { buffer, _ in
                self.recognitionRequest?.append(buffer)
                
                guard let channelData = buffer.floatChannelData?[0] else { return }
                let channelDataArray = Array(UnsafeBufferPointer(start: channelData, count: Int(buffer.frameLength)))
                let rms = sqrt(channelDataArray.map { $0 * $0 }.reduce(0, +) / Float(buffer.frameLength))
                let level = min(max(rms * 20, 0), 1)
                
                DispatchQueue.main.async {
                    self.audioLevel = level
                    
                    self.waveformLevels.removeFirst()
                    self.waveformLevels.append(level)
                }
            }
            
            recognitionTask = speechRecognizer?.recognitionTask(with: recognitionRequest) { result, error in
                if let result = result {
                    self.transcribedText = result.bestTranscription.formattedString
                }
                
                if error != nil || (result?.isFinal ?? false) {
                    self.audioEngine.stop()
                    inputNode.removeTap(onBus: 0)
                    self.recognitionRequest = nil
                    self.recognitionTask = nil
                    self.isRecording = false
                }
            }
            
            audioEngine.prepare()
            try audioEngine.start()
            isRecording = true
        } catch {
            transcribedText = "Failed to start recording: \(error.localizedDescription)"
        }
    }
    
    func reloadRecording() {
        self.isRecording = false
        self.transcribedText = ""
        self.isRecordingFinished = false
    }
}
