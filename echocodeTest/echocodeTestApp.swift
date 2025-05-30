//
//  echocodeTestApp.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

@main
struct echocodeTestApp: App {
    @State private var petsViewModel = PetsViewModel()
    @State private var speechRecordingViewModel = SpeechRecordingViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(petsViewModel)
                .environment(speechRecordingViewModel)
        }
    }
}
