//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by K12 Services on 06/05/21.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
            OnboardingView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
