//
//  Date+Formatting.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import Foundation

extension Date {
    
    var transactionFormat: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
}


