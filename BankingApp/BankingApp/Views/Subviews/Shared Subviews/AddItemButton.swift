//
//  AddItemButton.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct AddItemButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: action) {
                HStack {
                    Image(systemName: "plus.circle")
                    Text(title)
                }
                .font(.headline)
            }
            .padding()
        }
    }
}

struct AddItemButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            AddItemButton(title: "Add Item",
                          action: {})
        }
    }
}
