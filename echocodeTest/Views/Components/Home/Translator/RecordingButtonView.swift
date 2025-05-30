//
//  RecordingButtonView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct RecordingButtonView: View {
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
                VStack(spacing: 16) {
                    EqualizerView(levels: speechRecordingViewModel.waveformLevels)
                        .frame(height: 40)
                        .padding(.horizontal, 8)
                        .transition(.opacity.combined(with: .scale))
                    
                    Text("Recording...")
                        .font(.footnote.bold())
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .animation(.easeInOut(duration: 0.2), value: speechRecordingViewModel.isRecording)
            }
        }
        .buttonStyle(.plain)
    }
}
#Preview {
    RecordingButtonView()
        .environment(SpeechRecordingViewModel())
}
