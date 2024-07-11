//
//  HomeView.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 9/7/24.
//

import SwiftData
import SwiftUI

struct HomeView: View {
    @Environment(\.modelContext) var context
    
    @Query(sort: \MyList.name) var myLists: [MyList]
    
    @State private var isAddListPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List(myLists) { listItem in
                    Text(listItem.name)
                }
                
                
                Spacer()
                
                Button {
                    isAddListPresented = true
                } label: {
                    Text("Add List")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.headline)
                }
                .padding()

            }
            .sheet(isPresented: $isAddListPresented) {
                NavigationStack {
                    AddNewListView { name, color in
                        let myList = MyList(name: name, colorHex: color.toHex() ?? "#FF0000")
                        
                        context.insert(myList)
                        
                        do {
                            try context.save()
                        } catch {
                            print("[SwiftData] error saving the model \(error.localizedDescription)")
                        }
                        
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
