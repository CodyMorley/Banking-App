//
//  Int+CurrencyFormatting.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import Foundation

extension Int {
    
    var currencyFormat: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: Float(self) / 100 )) ?? ""
    }
}
