//
//  DemoAppSwiftUIApp.swift
//  DemoAppSwiftUI
//
//  Created by ZT-9 on 03/12/24.
//

import SwiftUI

@main
struct DemoAppSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Home()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
