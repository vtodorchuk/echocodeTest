//
//  ContentView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct HomeView: View {
    @Binding var selectedTab: Int
    
    @State private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                HomeHeaderView()
                    .padding(.bottom, 58)
    
                ActionsView(viewModel: $viewModel)
                SelectedPetView(selectedPet: $viewModel.selectedPet)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(BackgroudView())
        }
    }
}

#Preview {
    @Previewable @State var selectedTab = 0
    HomeView(selectedTab: $selectedTab)
}

