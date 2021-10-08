//
//  TransactionsView.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct TransactionsView: View {
    //Bindings
    @EnvironmentObject private var stateHandler: StateHandler
    @State private var addingTransactions: Bool = false
    //Properties
    let account: Account
    
    var body: some View {
        TransactionsViewContent(account: account, newTransaction: { addingTransactions = true })
            .sheet(isPresented: $addingTransactions) {
                NavigationView {
                    NewTransactionView(account: account)
                        .environmentObject(stateHandler)
                }
            }
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                TransactionsViewContent(account: TestData.account, newTransaction: {})
            }
        }
    }
}
