//
//  MicrophoneButton.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct MicrophoneButtonView: View {
    @Environment(SpeechRecordingViewModel.self) var speechRecordingViewModel
    
    var body: some View {
        Button {
            if speechRecordingViewModel.isRecording {
                speechRecordingViewModel.stopTranscribing()
            } else {
                speechRecordingViewModel.startTranscribing()
            }
        } label: {
            GroupBoxBase(width: 178, height: 178, cornerRadius: 16, color: .white) {
                VStack(alignment: .center) {
                    Image("microphone")
                        .resizable()
                        .frame(width: 70, height: 70)
                    
                    Text("Start Speak")
                        .fontWeight(.bold)
                }
            }
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    MicrophoneButtonView()
}
