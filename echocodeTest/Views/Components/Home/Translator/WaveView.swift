//
//  WavesView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct WaveView: View {
    var level: Float
    
    var body: some View {
        GeometryReader { geometry in
            let height = CGFloat(level) * geometry.size.height
            Capsule()
                .fill(Color.blue)
                .frame(width: 4, height: height)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                .animation(.easeOut(duration: 0.1), value: height)
        }
    }
}
