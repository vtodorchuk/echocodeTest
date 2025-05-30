//
//  ResultView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct ResultView: View {
    @State var selectedPet: Pets = .dog

    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 45) {
                HStack {
                    dismissButton
                    Spacer()
                    Text("Result")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Spacer()
                    dismissButton.opacity(0)
                }
                
                Spacer()
                
                MessageView()
                SelectedPetView(selectedPet: $selectedPet)
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(BackgroudView())
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var dismissButton: some View {
        Button {
             
        } label: {
            Image("dismiss")
                .resizable()
                .frame(width: 28, height: 28)
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 48, height: 48)
                )
        }
    }
}

#Preview {
    ResultView()
}
