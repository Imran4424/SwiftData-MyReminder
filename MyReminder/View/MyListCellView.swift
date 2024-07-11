//
//  MyListCellView.swift
//  MyReminder
//
//  Created by Shah Md Imran Hossain on 11/7/24.
//

import SwiftUI

struct MyListCellView: View {
    let myList: MyList
    
    var body: some View {
        HStack {
            Image(systemName: "line.3.horizontal.circle.fill")
                .foregroundStyle(Color(hex: myList.colorHex))
            Text(myList.name)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(Color.gray)
                .opacity(0.4)
                .padding(.trailing, 10)
        }
    }
}

#Preview {
    MyListCellView(myList: MyList(name: "Empty", colorHex: "#FF0000"))
}
