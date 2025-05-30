//
//  MicrophoneButton.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct MicrophoneButtonView: View {
    @Binding var viewModel: HomeViewModel
    
    var body: some View {
        GroupBoxBase(width: 178, height: 178, cornerRadius: 16, color: .white) {
            Button {
                viewModel.startRecordingVoice()
            } label: {
                VStack(alignment: .center) {
                    Image("microphone")
                        .resizable()
                        .frame(width: 70, height: 70)
                    
                    Text("Start Speak")
                        .fontWeight(.bold)
                }
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    @Previewable @State var viewModel = HomeViewModel()
    MicrophoneButtonView(viewModel: $viewModel)
}
