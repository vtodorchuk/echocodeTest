//
//  ResultView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct ResultView: View {
    @Binding var petsViewModel: PetsViewModel
    @Binding var speechRecordingViewModel: SpeechRecordingViewModel
    
    var body: some View {
        VStack {
            ResultHeaderView(speechRecordingViewModel: $speechRecordingViewModel)
            Spacer()
            Spacer()
            if speechRecordingViewModel.transcribedText.isEmpty {
                RepeatButtonView(speechRecordingViewModel: $speechRecordingViewModel)
            } else {
                MessageView(transcribedText: speechRecordingViewModel.transcribedText)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var viewModel = PetsViewModel()
    @Previewable @State var speechRecordingViewModel = SpeechRecordingViewModel()
    ResultView(petsViewModel: $viewModel, speechRecordingViewModel: $speechRecordingViewModel)
}
