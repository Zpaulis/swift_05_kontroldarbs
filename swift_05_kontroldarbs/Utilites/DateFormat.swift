//
//  DateFormat.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 25/05/2022.
//

import Foundation

func dateGet(date: String) -> Date {
    let dateFormatGet = DateFormatter()
    dateFormatGet.dateFormat = "MM/dd/yyyy"
    return dateFormatGet.date(from: date) ?? Date()
}

func datePrint(date: Date) -> String {
    let dateFormatPrint = DateFormatter()
    dateFormatPrint.dateFormat = "yyyy. dd. MMM"
    return dateFormatPrint.string(from: date)
}



