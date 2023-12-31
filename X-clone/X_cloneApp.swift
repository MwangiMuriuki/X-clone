//
//  X_cloneApp.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

@main
struct X_cloneApp: App {
    @AppStorage("darkModeSelected") private var darkModeSelected = false
    @AppStorage("deviceThemeSelected") private var deviceThemeSelected = false


    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(darkModeSelected ? .dark : .light)
        }
    }
}
