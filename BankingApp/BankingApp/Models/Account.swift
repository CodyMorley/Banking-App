//
//  Account.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import Foundation
import Metal

struct Account {
    //Types
    enum AccountType: String, Codable, CaseIterable {
        case checking
        case savings
        case investment
        case retirement
    }
    
    //Properties
    let name: String
    let iban: String
    let type: AccountType
    var id: String { iban }
    var balance: Int {
        var balance = 0
        for transaction in transactions {
            balance += transaction.amount
        }
        return balance
    }
    private(set) var transactions: [Transaction]
    
    //Initialization
    init(name: String, iban: String, type: AccountType, initialDeposit: Int) {
        let first = Transaction(amount: initialDeposit,
                                beneficiary: "Starting Balance",
                                date: Date())
        self.name = name
        self.iban = iban
        self.type = type
        self.transactions = [first]
    }
    
    //Public Methods
    mutating func add(_ transaction: Transaction) {
        transactions.append(transaction)
    }
}
