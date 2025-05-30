//
//  HomeViewModel.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import Foundation
import Observation

@Observable
final class HomeViewModel {
    var selectedPet: Pets = .dog
    var isRecording = false
    
    func startRecordingVoice() {
        isRecording.toggle()
    }
    
    func stopRecordingVoice() {
        isRecording.toggle()
    }
}
