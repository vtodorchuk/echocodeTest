//
//  SettingsView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct SettingsView: View {
    @Binding var selectedTab: Int
    @Binding var isTabBarVisable: Bool
    
    @State private var settingsElements = [
        "Rate Us", "Share App", "Contact Us",
        "Restore Purchases", "Privacy Policy",
        "Terms of Use"
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Settings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                ScrollView {
                    ForEach(settingsElements, id: \.self) { element in
                        SettingsItem(text: element) {
                            Text(element)
                        }
                        .padding(.bottom, 5)
                    }
                }
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(BackgroudView())
        }
        .onAppear {
            isTabBarVisable = true
        }
    }
}

#Preview {
    @Previewable @State var selectedTab = 0
    @Previewable @State var isTabBarVisable = true
    SettingsView(selectedTab: $selectedTab, isTabBarVisable: $isTabBarVisable)
}
