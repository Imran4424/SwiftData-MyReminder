//
//  MyList.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 10/7/24.
//

import SwiftData
import SwiftUI

@Model
final class MyList {
    @Attribute(.unique) var name: String
    var colorHex: String
    
    init(name: String, colorHex: String) {
        self.name = name
        self.colorHex = colorHex
    }
}
