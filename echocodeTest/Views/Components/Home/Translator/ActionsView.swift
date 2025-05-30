//
//  ActionsView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct ActionsView: View {
    @Environment(PetsViewModel.self) var petsViewModel
    @Environment(SpeechRecordingViewModel.self) var speechRecordingViewModel
    
    var body: some View {
        VStack(spacing: 58) {
            TranslatorSubHeaderView()
            
            HStack(alignment: .center, spacing: 35) {
                if speechRecordingViewModel.isRecording {
                    RecordingButtonView()
                } else {
                    MicrophoneButtonView()
                }
                
                GroupBoxBase(width: 107, height: 176, cornerRadius: 16, color: .white) {
                    VStack(alignment: .center) {
                        ForEach(Pets.allCases, id: \.self) { pet in
                            PetButtonView(pet: pet, color: pet.color())
                        }
                    }
                }
            }
            .padding(.bottom, 51)
        }
    }
}

#Preview {
    ActionsView()
        .environment(PetsViewModel())
        .environment(SpeechRecordingViewModel())
}
