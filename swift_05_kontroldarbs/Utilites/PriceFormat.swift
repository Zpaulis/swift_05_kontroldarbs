//
//  PriceFormat.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 24/05/2022.
//

import Foundation
// Valūtas (cenas) formāts
func priceFormat(price: Float?) -> String {
    if let input = price {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.currencyCode = "EUR"
        formatter.numberStyle = .currency
       let output = formatter.string(for: input) ?? " "
        return output
    } else {
        return " "
    }
}

