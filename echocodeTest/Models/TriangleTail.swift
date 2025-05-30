//
//  TriangleTail.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import Foundation
import SwiftUI

struct TriangleTail: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let topRight = CGPoint(x: rect.maxX, y: rect.minY)
        let bottomCenter = CGPoint(x: rect.midX, y: rect.maxY)
        let topLeft = CGPoint(x: rect.minX, y: rect.minY)
        
        path.move(to: topLeft)
        path.addLine(to: topRight)
        path.addLine(to: bottomCenter)
        path.closeSubpath()
        
        return path
    }
}
