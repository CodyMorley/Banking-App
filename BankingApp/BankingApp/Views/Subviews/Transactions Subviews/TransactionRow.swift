//
//  TransactionRow.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct TransactionRow: View {
    let transaction: Transaction
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            HStack {
                Text(transaction.beneficiary)
                    .font(.headline)
                Spacer()
                Text(transaction.amount.currencyFormat)
                    .font(.headline)
            }
            Text(transaction.date.transactionFormat)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}
