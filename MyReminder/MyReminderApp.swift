//
//  MyReminderApp.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 9/7/24.
//

import SwiftData
import SwiftUI

@main
struct MyReminderApp: App {
    // use this custom container if you need customization
    let container: ModelContainer = {
        let schema = Schema([MyList.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(container)
        }
    }
}
