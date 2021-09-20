//
//  SingleAppGitApp.swift
//  SingleAppGit
//
//  Created by Viktor Siedov on 20.09.2021.
//

import SwiftUI

@main
struct SingleAppGitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
