//
//  AddNewListView.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 10/7/24.
//

import SwiftUI

struct AddNewListView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var name: String = ""
    @State private var selectedColor: Color = .red
    
    let onSave: (String, Color) -> Void
    
    private var isFormValid: Bool {
        return name.isEmpty ? false : true
    }
    
    var body: some View {
        VStack {
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
            
            ColorPickerView(selectedColor: $selectedColor)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar {
            
            ToolbarItem(placement: .topBarLeading) {
                Button("Close") {
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text("New List")
                    .font(.headline)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    // save the list to SwiftData
                    onSave(name, selectedColor)
                    dismiss()
                }
                .disabled(!isFormValid)
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddNewListView(onSave: { (_, _) in })
    }
}
