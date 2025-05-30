//
//  SettingsItem.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct SettingsItem<Content: View>: View {
    var text: String
    
    @ViewBuilder let destination: Content
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16, style: .continuous)
            .fill(.settingsLink)
            .frame(height: 50)
            .overlay {
                NavigationLink {
                    destination
                } label: {
                    HStack {
                        Text(text).fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.black)
                    .padding()
                }
            }
    }
}
