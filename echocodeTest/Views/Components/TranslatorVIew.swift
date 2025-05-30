//
//  TranslatorVIew.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct TranslatorView: View {
    @Environment(PetsViewModel.self) var petsViewModel
    @Environment(SpeechRecordingViewModel.self) var speechRecordingViewModel
    
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("Translator")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .padding(.bottom, 58)
            
            ActionsView()
        }
    }
}

#Preview {
    TranslatorView()
        .environment(PetsViewModel())
        .environment(SpeechRecordingViewModel())
}
