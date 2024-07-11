//
//  ReminderListView.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 12/7/24.
//

import SwiftUI

struct ReminderListView: View {
    let reminders: [Reminder]
    
    var body: some View {
        List(reminders) { reminder in
            Text(reminder.title)
        }
    }
}

#Preview {
    ReminderListView(reminders: [])
}
