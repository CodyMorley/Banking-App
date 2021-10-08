//
//  NewAccountContent.swift
//  BankingApp
//
//  Created by Cody Morley on 10/8/21.
//

import SwiftUI

struct NewAccountContent: View {
    //Bindings
    @Binding var name: String
    @Binding var accountType: Account.AccountType
    //Properties
    let createAccount: () -> Void
    let cancelAndExit: () -> Void
    var createButton: some View {
        Button(action: createAccount) {
            Text("Save")
                .bold()
        }
    }
    var cancelButton: some View {
        Button(action: cancelAndExit) {
            Text("Cancel")
        }
    }
    
    //Body
    var body: some View {
        List {
            
        }
        .padding(.top)
        .navigationBarTitle("Add A New Account")
        .navigationBarItems(leading: cancelButton, trailing: createButton)
    }
}

struct NewAccountsContent_Previews: PreviewProvider {
    static var previews: some View {
        NewAccountContent(name: .constant(TestData.account.name), accountType: .constant(.checking), createAccount: {}, cancelAndExit: {})
    }
}
