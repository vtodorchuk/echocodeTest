//
//  MessageVIew.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct MessageView: View {
    var transcribedText: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16, style: .continuous)
            .fill(.settingsLink)
            .frame(height: 142)
            .overlay {
                Text(transcribedText)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
            }
        
        LinkerView()
            .offset(x: 110, y: -40)
    }
}

#Preview {
    MessageView(transcribedText: "")
}
