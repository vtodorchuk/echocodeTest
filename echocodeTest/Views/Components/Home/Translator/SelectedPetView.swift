//
//  SelectedPet.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct SelectedPetView: View {
    @Binding var selectedPet: Pets
    
    var body: some View {
        Image(selectedPet.rawValue)
            .resizable()
            .frame(width: 184, height: 184)
    }
}

#Preview {
    @Previewable @State var selectedPet: Pets = .dog
    SelectedPetView(selectedPet: $selectedPet)
}
