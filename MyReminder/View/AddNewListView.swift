//
//  AddNewListView.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 10/7/24.
//

import SwiftUI

struct AddNewListView: View {
    @State private var name: String = ""
    @State private var selectedColor: Color = .gray
    
    var body: some View {
        VStack {
            Image(systemName: "line.3.horizontal.circle.fill")
                .foregroundStyle(selectedColor)
                .font(.system(size: 100))
            
            TextField("List Name", text: $name)
                .multilineTextAlignment(.center)
                .textFieldStyle(.roundedBorder)
            
        }
        .padding(30)
        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
        
        Spacer()
    }
}

#Preview {
    AddNewListView()
}
