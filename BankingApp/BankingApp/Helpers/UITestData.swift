//
//  UITestData.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import Foundation
struct TestData {
    static let account = Account(name: "Test Account",
                                 iban: String.mockIBAN(),
                                 type: .checking,
                                 initialDeposit: 100)
    static let transaction = Transaction(amount: 54321,
                                         beneficiary: "Wages",
                                         date: Date())
}
