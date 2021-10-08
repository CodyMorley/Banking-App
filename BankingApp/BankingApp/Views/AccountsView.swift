//
//  AccountsView.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct AccountsView: View {
    @EnvironmentObject private var stateHandler: StateHandler
    @State private var addingAccount: Bool = false
    
    
    var body: some View {
        NavigationView {
            AccountsViewContent(accounts: $stateHandler.accounts,
                                newAccount: { addingAccount = true })
        }
        .sheet(isPresented: $addingAccount) {
            NavigationView {
                NewAccountView()
            }
            .environmentObject(stateHandler)
        }
    }
}

struct AccountsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AccountsViewContent(accounts: .constant([TestData.account]), newAccount: {})
        }
    }
}
