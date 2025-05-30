//
//  ResultView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct ResultView: View {
    @Environment(PetsViewModel.self) var petsViewModelEnvironment
    @Environment(SpeechRecordingViewModel.self) var speechRecordingViewModel
    
    var body: some View {
        VStack {
            ResultHeaderView()
            Spacer()
            Spacer()
            if speechRecordingViewModel.transcribedText.isEmpty {
                RepeatButtonView()
            } else {
                MessageView(transcribedText: speechRecordingViewModel.transcribedText)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ResultView()
}
