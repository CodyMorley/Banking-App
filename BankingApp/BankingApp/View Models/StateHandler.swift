//
//  StateHandler.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import Foundation

class StateHandler: ObservableObject {
    //Properties
    @Published var accounts: [Account]
    private let persistenceHandler = PersistenceHandler()
    
    //Initialization
    init() {
        self.accounts = persistenceHandler.fetchAccounts()
    }
    
    //Public Methods
    func addAccount(accountName name: String,
                    accountType: Account.AccountType,
                    initialDeposit: Int) {
        guard initialDeposit >= 0 else {
            NSLog("Cannot start a new account with a negative transaction")
            return
        }
        let newAccount = Account(name: name,
                                 iban: String.mockIBAN(),
                                 type: accountType,
                                 initialDeposit: initialDeposit)
        accounts.append(newAccount)
        persistenceHandler.save(accounts)
    }
    
    func addTransaction(ofAmount amount: Int, beneficiary: String, to account: Account) {
        guard let accountIndex = accounts.firstIndex(where: { $0.id == account.id }) else {
            return
        }
        let newTransaction = Transaction(amount: amount,
                                      beneficiary: beneficiary,
                                      date: Date())
        accounts[accountIndex].add(newTransaction)
        persistenceHandler.save(accounts)
    }
}
