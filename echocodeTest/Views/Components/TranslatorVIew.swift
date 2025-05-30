//
//  TranslatorVIew.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct TranslatorView: View {
    @Binding var petsViewModel: PetsViewModel
    @Binding var speechRecordingViewModel: SpeechRecordingViewModel
    
    
    var body: some View {
        VStack {
            TranslatorHeaderView()
            ActionsView(
                petsViewModel: $petsViewModel,
                speechRecordingViewModel: $speechRecordingViewModel
            )
        }
    }
}

#Preview {
    @Previewable @State var viewModel = PetsViewModel()
    @Previewable @State var speechRecordingViewModel =  SpeechRecordingViewModel()
    
    TranslatorView(petsViewModel: $viewModel, speechRecordingViewModel: $speechRecordingViewModel)
}
