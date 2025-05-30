//
//  LinkerView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct LinkerView: View {
    var body: some View {
        TriangleTail()
            .fill(.settingsLink)
            .frame(width: 12, height: 170)
            .rotationEffect(.degrees(45))
    }
}

#Preview {
    LinkerView()
}
