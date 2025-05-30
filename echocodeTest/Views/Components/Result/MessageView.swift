//
//  MessageView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct MessageView: View {
    @State var message = ""
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(.settingsLink)
                .frame(height: 54)
                .overlay {
                    if message != "" {
                        displayResult()
                    } else {
                        reapeatButton()
                    }
                }
        }
    }
    
    @ViewBuilder
    func reapeatButton() -> some View {
        Button {
            // TODO: Repeat logic
        } label: {
            HStack {
                Image(systemName: "arrow.circlepath")
                    .resizable()
                    .frame(width: 16, height: 16)
                
                Text("Repeat")
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.black)
        }

    }
    
    @ViewBuilder
    func displayResult() -> some View {
        Text(message)
            .fontWeight(.semibold)
            .padding()
    }
}

#Preview {
    MessageView()
}
