//
//  String+IBAN.swift
//  BankingApp
//
//  Created by Cody Morley on 10/7/21.
//

import Foundation

extension String {
    static func mockIBAN() -> String {
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let numerals = "0123456789"
        
        func randomized(len: Int, from characters: String) -> String {
            String((0..<len).map { _ in characters.randomElement()! })
        }
        
        return randomized(len: 2, from: letters)
        + randomized(len: 2, from: numerals)
        + randomized(len: 4, from: letters)
        + randomized(len: 12, from: numerals)
    }
}
