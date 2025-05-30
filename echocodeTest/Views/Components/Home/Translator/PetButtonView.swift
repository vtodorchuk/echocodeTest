//
//  DogButton.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct PetButtonView: View {
    @Environment(PetsViewModel.self) var petsViewModel

    var pet: Pets
    var color: Color
    
    func petSelected(name: String) -> Bool {
        petsViewModel.selectedPet.rawValue == name
    }
    
    var body: some View {
        GroupBoxBase(width: 70, height: 70, cornerRadius: 16, color: color) {
            Button {
                withAnimation {
                    petsViewModel.selectedPet = pet
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
    PetButtonView(pet: .dog, color: .lightGreen)
}
