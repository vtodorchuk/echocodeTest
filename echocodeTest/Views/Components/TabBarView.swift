//
//  TabBarVIew.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16, style: .continuous)
            .fill(.white)
            .frame(width: 216, height: 82)
            .overlay {
                HStack(spacing: 42) {
                    ForEach(TabbedItems.allCases, id: \.self) { tab in
                        Button{
                            selectedTab = tab.rawValue
                        } label: {
                            tabItem(
                                title: tab.title,
                                systemImage: tab.iconName,
                                isActive: (selectedTab == tab.rawValue)
                            )
                        }
                    }
                }
            }
    }
    
    @ViewBuilder
    func tabItem(title: String, systemImage: String, isActive: Bool) -> some View {
        VStack {
            Image(systemImage)
                .resizable()
                .frame(width: 24, height: 24)
            
            Text(title)
        }
        .foregroundStyle(.black)
        .fontWeight(.semibold)
        .opacity(isActive ? 1 : 0.4)
    }
}

#Preview {
    @Previewable @State var selectedTab: Int = 0
    TabBarView(selectedTab: $selectedTab)
}
