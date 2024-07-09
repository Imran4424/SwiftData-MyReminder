//
//  MyList.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 10/7/24.
//

import SwiftUI
import SwiftData

@Model
final class MyList {
    @Attribute(.unique) var name: String
    var color: Color
    
    init(name: String, color: Color) {
        self.name = name
        self.color = color
    }
}
