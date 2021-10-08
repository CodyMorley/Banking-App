//
//  AccountRow.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct AccountRow: View {
    let account: Account
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            HStack {
                Text(account.name)
                    .font(.headline)
                Spacer()
                Text(account.balance.currencyFormat)
                    .font(.headline)
            }
            Text("\(account.type.rawValue.capitalized) account")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text(account.iban.ibanFormat)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 8.0)
    }
}
