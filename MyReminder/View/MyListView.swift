//
//  MyListView.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 11/7/24.
//

import SwiftUI

struct MyListView: View {
    var myLists: [MyList]
    
    var body: some View {
        NavigationStack {
            VStack {
                if myLists.isEmpty {
                    Spacer()
                    Text("No reminders found")
                } else {
                    ForEach(myLists) { myListItem in
                        MyListCellView(myList: myListItem)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                            .font(.title3)
                        
                        Divider()
                    }
                }
            }
        }
    }
}

#Preview {
    MyListView(myLists: [])
}
