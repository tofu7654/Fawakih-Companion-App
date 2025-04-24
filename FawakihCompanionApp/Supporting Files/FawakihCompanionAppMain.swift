//
//  FawakihCompanionAppApp.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/22/25.
//

import SwiftUI

@main
struct FawakihCompanionAppMain: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            FawakihDashboardView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
