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
    
    @Environment(PetsViewModel.self) var petsViewModel
    @Environment(SpeechRecordingViewModel.self) var speechRecordingViewModel
    
    var body: some View {
        VStack(alignment: .center) {
            Group {
                if speechRecordingViewModel.isRecordingFinished {
                    ResultView()
                        .onAppear {
                            isTabBarVisable = false
                        }
                } else {
                    TranslatorView()
                        .onAppear {
                            isTabBarVisable = true
                        }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            SelectedPetView(selectedPet: petsViewModel.selectedPet)
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

