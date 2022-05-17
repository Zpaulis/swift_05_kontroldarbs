//
//  Prece.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 16/05/2022.
//

import Foundation

class Prece {
    var article: String
    var name: String
    var price: Float
    var amount: Float
    var subtotal: Float
    
    init(article: String, name: String, price: Float, amount: Float) {
        self.article = article
        self.name = name
        self.price = (price * 100).rounded() / 100
        self.amount = amount
        self.subtotal = (price * amount * 100).rounded() / 100
    }
    
}




