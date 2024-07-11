//
//  Extensions.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 10/7/24.
//

import SwiftUI

extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
    
    func toHex() -> String? {
        guard let components = UIColor(self).cgColor.components else {
            print("[hexConvertion] cg color components is nil")
            return nil
        }
        
        
        let r = components[0]
        let g = components[1]
        let b = components[2]
        
        let hexString = String(
            format: "%02lX%02lX%02lX",
            Int(r * 255),
            Int(g * 255),
            Int(b * 255)
        )
        
        print("[hexConvertion] \(hexString)")
        return hexString
    }
}
