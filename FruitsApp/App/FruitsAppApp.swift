//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by K12 Services on 06/05/21.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
