//
//  TransactionsViewContent.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct TransactionsViewContent: View {
    //Properties
    let account: Account
    let newTransaction: () -> Void
    var transactions: [Transaction] {
        account.transactions.sorted(by: { $0.date >= $1.date })
    }
    
    //View Body
    var body: some View {
        VStack {
            List(transactions) { transaction in
                TransactionRow(transaction: transaction)
            }
            AddItemButton(title: "New Transaction", action: newTransaction)
        }
        .navigationBarTitle(account.name)
    }
}
