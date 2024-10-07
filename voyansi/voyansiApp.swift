//
//  voyansiApp.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 18/09/24.
//

import SwiftUI

@main
struct voyansiApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.font, .custom("Geist-Regular", size: 17))
        }
        .environment(\.font, .custom("Geist-Regular", size: 17))
    }
}
