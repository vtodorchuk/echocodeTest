//
//  ActionsView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct ActionsView: View {
    @Binding var petsViewModel: PetsViewModel
    @Binding var speechRecordingViewModel: SpeechRecordingViewModel
    
    var body: some View {
        if !speechRecordingViewModel.transcribedText.isEmpty && speechRecordingViewModel.isRecording == false {
            Text(speechRecordingViewModel.transcribedText)
                .foregroundStyle(.black)
                .font(.largeTitle)
        } else {
            VStack(spacing: 58) {
                TranslatorSubHeaderView()
                
                HStack(alignment: .center, spacing: 35) {
                    if speechRecordingViewModel.isRecording {
                        RecordingButtonView(speechRecordingViewModel: $speechRecordingViewModel)
                    } else {
                        MicrophoneButtonView(speechRecordingViewModel: $speechRecordingViewModel)
                    }
                    
                    GroupBoxBase(width: 107, height: 176, cornerRadius: 16, color: .white) {
                        VStack(alignment: .center) {
                            ForEach(Pets.allCases, id: \.self) { pet in
                                PetButtonView(selectedPet: $petsViewModel.selectedPet, pet: pet, color: pet.color())
                            }
                        }
                    }
                }
                .padding(.bottom, 51)
            }
        }
    }
}

#Preview {
    @Previewable @State var viewModel = PetsViewModel()
    @Previewable @State var speechRecordingViewModel =  SpeechRecordingViewModel()
    ActionsView(petsViewModel: $viewModel, speechRecordingViewModel: $speechRecordingViewModel)
}
