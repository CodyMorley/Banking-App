//
//  TransactionAmount.swift
//  BankingApp
//
//  Created by Cody Morley on 10/8/21.
//

import SwiftUI

struct TransactionAmount: View {
    @Binding var amount: String
    
    var body: some View {
        VStack(alignment: .trailing) {
            Text("Amount")
                .font(.callout)
                .foregroundColor(.secondary)
            TextField(0.currencyFormat, text: $amount)
                .multilineTextAlignment(.trailing)
                .font(Font.largeTitle.bold())
                .keyboardType(.decimalPad)
        }
        .padding()
    }
}

struct TransactionAmount_Previews: PreviewProvider {
    static var previews: some View {
        TransactionAmount(amount: .constant("100"))
    }
}
