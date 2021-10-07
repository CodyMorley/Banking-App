//
//  PersistenceHandler.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import Foundation

class PersistenceHandler {
    private let docsURL = FileManager.default
        .urls(for: .documentDirectory,
                 in: .userDomainMask)
        .first!
    
    private var accountsURL: URL {
        return docsURL.appendingPathComponent("Accounts").appendingPathExtension("json")
    }
    
    func save(_ accounts: [Account]) {
        let encoder = JSONEncoder()
        do {
            guard let data = try? encoder.encode(accounts) else {
                NSLog("Unable to properly encode account data.")
                return
            }
            try data.write(to: accountsURL)
        } catch {
            NSLog("Unable to write account data to file system.")
            return
        }
    }
    
    func fetchAccounts() -> [Account] {
        guard let data = try? Data(contentsOf: accountsURL) else {
            NSLog("No account data found. Loading empty data set")
            return []
        }
        let decoder = JSONDecoder()
        do {
            let accounts = try decoder.decode([Account].self, from: data)
            return accounts
        } catch {
            NSLog("Unable to load any accounts from file system. Loading empty data set.")
            return []
        }
    }
}
