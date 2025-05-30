//
//  MainView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView(selectedTab: $selectedTab)
                    .tag(0)
                SettingsView(selectedTab: $selectedTab)
                    .tag(1)
            }
            
            TabBarView(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    MainView()
}
