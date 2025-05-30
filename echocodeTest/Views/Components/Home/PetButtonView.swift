//
//  DogButton.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct PetButtonView: View {
    @Binding var selectedPet: Pets
    
    var pet: Pets
    var color: Color
    
    func petSelected(name: String) -> Bool {
        selectedPet.rawValue == name
    }
    
    var body: some View {
        GroupBoxBase(width: 70, height: 70, cornerRadius: 16, color: color) {
            Button {
                withAnimation {
                    selectedPet = pet
                }
            } label: {
                Image(pet.rawValue)
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }
        .opacity(petSelected(name: pet.rawValue) ? 1 : 0.4)
    }
}

#Preview {
    @Previewable @State var selectedPet: Pets = .dog
    PetButtonView(selectedPet: $selectedPet, pet: .dog, color: .lightGreen)
}
