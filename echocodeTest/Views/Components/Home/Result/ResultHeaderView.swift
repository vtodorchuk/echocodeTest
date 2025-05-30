//
//  ResultHeaderView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct ResultHeaderView: View {
    @Binding var speechRecordingViewModel: SpeechRecordingViewModel
    
    var body: some View {
        HStack {
            dismissButton()
            Spacer()
            Text("Result")
                .foregroundStyle(.black)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Spacer()
            dismissButton()
                .opacity(0)
        }
    }
    
    @ViewBuilder
    func dismissButton() -> some View {
        Button {
            speechRecordingViewModel.reloadRecording()
        } label: {
            Circle()
                .fill(.white)
                .frame(width: 48, height: 48)
                .overlay {
                    Image("dismiss")
                        .resizable()
                        .frame(width: 28, height: 28)
                }
        }
    }
}

#Preview {
    @Previewable @State var speechRecordingViewModel = SpeechRecordingViewModel()
    ResultHeaderView(speechRecordingViewModel: $speechRecordingViewModel)
}
