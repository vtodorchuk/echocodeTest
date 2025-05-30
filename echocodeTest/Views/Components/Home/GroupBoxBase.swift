//
//  GroupBoxBase.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct GroupBoxBase<Content: View>: View {
    var width: CGFloat
    var height: CGFloat
    var cornerRadius: CGFloat
    var color: Color
    
    @ViewBuilder let content: Content
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
            .fill(color)
            .frame(width: width, height: height)
            .shadow(radius: 6)
            .overlay {
                content
            }
    }
}

#Preview {
    GroupBoxBase(width: 178, height: 178, cornerRadius: 16, color: .white) {
        Button {
            // TODO: Add logic for mic rec
        } label: {
            VStack(alignment: .center) {
                Image("microphone")
                    .resizable()
                    .frame(width: 70, height: 70)
                
                Text("Start Speak")
                    .fontWeight(.bold)
            }
        }
        .foregroundStyle(.black)
    }
}
