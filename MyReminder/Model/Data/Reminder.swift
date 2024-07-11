//
//  Reminder.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 11/7/24.
//

import SwiftData
import SwiftUI

@Model
final class Reminder {
    var title: String
    var notes: String?
    var isCompleted: Bool
    var createdDate: Date
    var reminderDate: Date?
    
    init(title: String, notes: String? = nil, isCompleted: Bool = false, reminderDate: Date? = nil) {
        self.title = title
        self.notes = notes
        self.isCompleted = isCompleted
        self.createdDate = Date()
        self.reminderDate = reminderDate
    }
}
