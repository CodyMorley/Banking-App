//
//  AccountsViewContent.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct AccountsViewContent: View {
    //Properties
    @Binding var accounts: [Account]
    let newAccount: () -> Void
    
    //Methods
    func move(fromOffsets source: IndexSet, toOffset destination: Int) {
        accounts.move(fromOffsets: source, toOffset: destination)
    }
    
    //Body
    var body: some View {
        VStack{
            List {
                ForEach(accounts) { account in
                    NavigationLink(destination: TransactionsView(account: account)) {
                        AccountRow(account: account)
                    }
                }
                .onMove(perform: move(fromOffsets:toOffset:))
            }
            AddItemButton(title: "New Account", action: newAccount)
        }
        .navigationBarTitle("Accounts")
        .navigationBarItems(trailing: EditButton())
    }
}


