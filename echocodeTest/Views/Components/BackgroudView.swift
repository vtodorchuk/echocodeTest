//
//  BackgroudView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct BackgroudView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.white, .customBackgroud, .customBackgroud]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroudView()
}
