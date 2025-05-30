//
//  TabbedItems.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import Foundation

enum TabbedItems: Int, CaseIterable{
    case translator = 0
    case clicker = 1
    
    var title: String{
        switch self {
        case .translator:
            return "Translator"
        case .clicker:
            return "Clicker"
        }
    }
    
    var iconName: String{
        switch self {
        case .translator:
            return "messages"
        case .clicker:
            return "gear"
        }
    }
}
