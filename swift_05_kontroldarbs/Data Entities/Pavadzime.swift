//
//  Pavadzime.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 16/05/2022.
//

import Foundation

class Pavadzime {
    var pavNumber: String
    var pavData: Date
    var pavConsignee: String
    var pavConigneeAddress: String?
    var pavConsigneePhone: String?
    var pavGoods: [Prece]
    var pavTotal: Float
    
    init(pavNumber: String, pavData: Date = Date(), pavConsignee: String, pavConigneeAddress: String?, pavConsigneePhone: String?, pavGoods: [Prece]) {
        self.pavNumber = pavNumber
        self.pavData = pavData
        self.pavConsignee = pavConsignee
        self.pavConigneeAddress = pavConigneeAddress
        self.pavConsigneePhone = pavConsigneePhone
        self.pavGoods = pavGoods
        self.pavTotal = 0
        for i in pavGoods {
            self.pavTotal = self.pavTotal + i.subtotal
        }
    }
    
}


