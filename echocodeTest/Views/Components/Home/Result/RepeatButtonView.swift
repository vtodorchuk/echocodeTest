//
//  RepeatButtonView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct RepeatButtonView: View {
    @Binding var speechRecordingViewModel: SpeechRecordingViewModel
    
    var body: some View {
        Button {
            speechRecordingViewModel.reloadRecording()
        } label: {
            HStack {
                Image(systemName: "arrow.circlepath")
                    .resizable()
                    .frame(width: 16, height: 16)
                Text("Repeat")
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.black)
        }
        .background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(.settingsLink)
                .frame(width: 291, height: 54)
        )
    }
}

#Preview {
    @Previewable @State var speechRecordingViewModel = SpeechRecordingViewModel()
    RepeatButtonView(speechRecordingViewModel: $speechRecordingViewModel)
}
