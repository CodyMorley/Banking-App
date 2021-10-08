//
//  NewTransactionView.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import SwiftUI

struct NewTransactionView: View {
    //Bindings
    @Environment(\.presentationMode) private var presentationMode
    @EnvironmentObject private var stateHandler: StateHandler
    @State private var amount = ""
    @State private var beneficiary = ""
    //Properties
    let account: Account
    
    //Methods
    func finalizeTransaction() {
        let amount = (Int(amount) ?? 00) * 100
        stateHandler.addTransaction(ofAmount: amount,
                                    beneficiary: beneficiary,
                                    to: account)
        dismiss()
    }
    
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
    
    
    //Body
    var body: some View {
        NewTransactionContent(amount: $amount,
                              beneficiary: $beneficiary,
                              cancelAndExit: dismiss,
                              finalize: finalizeTransaction)
    }
}

struct NewTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        NewTransactionView(account: TestData.account)
    }
}
