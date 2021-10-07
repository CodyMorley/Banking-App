//
//  Transaction.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import Foundation

struct Transaction: Identifiable, Codable {
    let id = UUID()
    let amount: Int
    let beneficiary: String
    let date: Date
}
