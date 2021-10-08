//
//  NewAccountView.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct NewAccountView: View {
    //Bindings
    @Environment(\.presentationMode) private var presentationMode
    @EnvironmentObject private var stateHandler: StateHandler
    //Properties
    @State private var name: String
    @State private var type: Account.AccountType
    
    
    //Methods
    func createAccount() {
        stateHandler.addAccount(accountName: name,
                                accountType: type,
                                initialDeposit: 50)
        dismissView()
    }
    
    func dismissView() {
        presentationMode.wrappedValue.dismiss()
    }
    
    
    //Body
    var body: some View {
        NewAccountContent(name: $name,
                          accountType: $type,
                          createAccount: createAccount,
                          cancelAndExit: dismissView)
    }
}

struct NewAccountView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NewAccountContent(name: .constant("JANE DOE"),
                              accountType: .constant(.checking),
                              createAccount: {},
                              cancelAndExit: {})
        }
    }
}
