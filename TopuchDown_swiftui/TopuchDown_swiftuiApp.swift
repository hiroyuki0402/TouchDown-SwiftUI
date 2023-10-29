//
//  TopuchDown_swiftuiApp.swift
//  TopuchDown_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/29.
//

import SwiftUI

@main
struct TopuchDown_swiftuiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
