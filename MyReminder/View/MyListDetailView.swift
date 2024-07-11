//
//  MyListDetailView.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 11/7/24.
//

import SwiftUI

struct MyListDetailView: View {
    let myList: MyList
    
    @State private var openAddReminder: Bool = false
    @State private var title: String = ""
    
    private var isFormValid: Bool {
        return title.isEmpty ? false : true
    }
    
    var body: some View {
        VStack {
            // display list of reminders
            
            HStack {
                Image(systemName: "plus.circle.fill")
                Button("New Reminder") {
                    openAddReminder = true
                }
            }
            .foregroundStyle(Color.blue)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .alert("New Reminder", isPresented: $openAddReminder) {
            TextField("", text: $title)
            Button("Cancel", role: .cancel) { }
            
            Button("Save") {
                
            }
            .disabled(!isFormValid)
        }
    }
}

#Preview {
    MyListDetailView(myList: MyList(name: "Test", colorHex: "FF0000"))
}

