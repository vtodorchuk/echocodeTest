//
//  FileVIew.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct EqualizerView: View {
    var levels: [Float]

    var body: some View {
        HStack(spacing: 3) {
            ForEach(levels.indices, id: \.self) { i in
                Capsule()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [.settingsLink]),
                        startPoint: .bottom,
                        endPoint: .top
                    ))
                    .frame(width: 3, height: max(CGFloat(levels[i]) * 100, 5))
            }
        }
        .animation(.easeOut(duration: 0.1), value: levels)
    }
}
