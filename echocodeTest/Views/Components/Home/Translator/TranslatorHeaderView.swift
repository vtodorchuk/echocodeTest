//
//  TranslatorHeaderView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct TranslatorHeaderView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Translator")
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .padding(.bottom, 58)
    }
}

#Preview {
    TranslatorHeaderView()
}
