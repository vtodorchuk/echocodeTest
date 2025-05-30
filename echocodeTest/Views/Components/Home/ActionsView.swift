//
//  ActionsView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct ActionsView: View {
    @Binding var viewModel: HomeViewModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 35) {
            if viewModel.isRecording {
                RecordingButtonView(viewModel: $viewModel)
            } else {
                MicrophoneButtonView(viewModel: $viewModel)
            }
            
            GroupBoxBase(width: 107, height: 176, cornerRadius: 16, color: .white) {
                VStack(alignment: .center) {
                    ForEach(Pets.allCases, id: \.self) { pet in
                        PetButtonView(selectedPet: $viewModel.selectedPet, pet: pet, color: pet.color())
                    }
                }
            }
        }
        .padding(.bottom, 51)
    }
}

#Preview {
    @Previewable @State var viewModel = HomeViewModel()
    ActionsView(viewModel: $viewModel)
}
