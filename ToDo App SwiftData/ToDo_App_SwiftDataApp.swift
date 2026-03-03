//
//  ToDo_App_SwiftDataApp.swift
//  ToDo App SwiftData
//
//  Created by Abhishek Kusalkar on 21/02/26.
//

import SwiftUI
import SwiftData

@main
struct ToDo_App_SwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Todo.self)
    }
}
