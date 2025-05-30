//
//  TranslatorSubHeaderView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct TranslatorSubHeaderView: View {
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            Text("HUMAN")
                .fontWeight(.semibold)
            Spacer()
            Image("arrow.swap.horizontal")
                .resizable()
                .frame(width: 24, height: 24)
            Spacer()
            Text("PET")
                .fontWeight(.semibold)
            Spacer()
        }
        .offset(x: -10)
    }
}

#Preview {
    TranslatorSubHeaderView()
}
