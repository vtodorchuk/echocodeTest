//
//  Pets.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import Foundation
import SwiftUI

enum Pets: String, CaseIterable {
    case cat, dog
    
    func color() -> Color {
        switch self {
        case .dog:
            return .lightGreen
        case .cat:
            return .lightBlue
        }
    }
}
