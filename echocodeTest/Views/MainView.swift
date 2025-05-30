//
//  MainView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab = 0
    @State var isTabBarVisable = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView(selectedTab: $selectedTab, isTabBarVisable: $isTabBarVisable)
                    .tag(0)
                SettingsView(selectedTab: $selectedTab, isTabBarVisable: $isTabBarVisable)
                    .tag(1)
            }
            
            if isTabBarVisable {
                TabBarView(selectedTab: $selectedTab)
            }
        }
    }
}

#Preview {
    MainView()
}
