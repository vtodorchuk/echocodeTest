//
//  ContentView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct HomeView: View {
    @Binding var selectedTab: Int
    @Binding var isTabBarVisable: Bool
    
    @State private var petsViewModel = PetsViewModel()
    @State private var speechRecordingViewModel = SpeechRecordingViewModel()
    
    var body: some View {
        VStack(alignment: .center) {
            Group {
                if speechRecordingViewModel.isRecordingFinished {
                    ResultView(petsViewModel: $petsViewModel, speechRecordingViewModel: $speechRecordingViewModel)
                        .onAppear {
                            isTabBarVisable = false
                        }
                } else {
                    TranslatorView(petsViewModel: $petsViewModel, speechRecordingViewModel: $speechRecordingViewModel)
                        .onAppear {
                            isTabBarVisable = true
                        }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            SelectedPetView(selectedPet: $petsViewModel.selectedPet)
                .padding(.bottom, 60)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(BackgroudView())
    }
}

#Preview {
    @Previewable @State var selectedTab = 0
    @Previewable @State var isTabBarVisable = true
    HomeView(selectedTab: $selectedTab, isTabBarVisable: $isTabBarVisable)
}

