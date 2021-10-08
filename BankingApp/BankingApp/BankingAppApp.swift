//
//  BankingAppApp.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

@main
struct BankingAppApp: App {
    let stateHandler = StateHandler()
    var body: some Scene {
        WindowGroup {
            AccountsView()
                .environmentObject(stateHandler)
        }
    }
}
