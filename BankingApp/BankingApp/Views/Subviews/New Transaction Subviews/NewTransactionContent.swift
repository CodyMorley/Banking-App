//
//  NewTransactionContent.swift
//  BankingApp
//
//  Created by Cody Morley on 10/8/21.
//

import SwiftUI

struct NewTransactionContent: View {
    //Bindings
    @Binding var amount: String
    @Binding var beneficiary: String
    //Properties
    let cancelAndExit: () -> Void
    let finalize: () -> Void
    var cancelButton: some View {
        Button(action: cancelAndExit) {
            Text("Cancel Transaction")
        }
    }
    var sendButton: some View {
        Button(action: finalize) {
            Text("Send")
                .bold()
        }
    }
    
    //Body
    var body: some View {
        List {
            TransactionAmount(amount: $amount)
            TextField("Beneficiary:", text: $beneficiary)
        }
        .navigationBarTitle("")
        .navigationBarItems(leading: cancelButton, trailing: sendButton)
    }
}

struct NewTransactionContent_Previews: PreviewProvider {
    static var previews: some View {
        NewTransactionContent(amount: .constant("150"),
                              beneficiary: .constant("JOHN Q. PUBLIC"),
                              cancelAndExit: {},
                              finalize: {})
    }
}
