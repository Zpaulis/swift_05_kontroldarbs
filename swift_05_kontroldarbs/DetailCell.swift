//
//  DetailCell.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 23/05/2022.
//

import Foundation
import UIKit

class DetailCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var goodArtikuls: UILabel!
    @IBOutlet weak var goodNosaukums: UILabel!
    @IBOutlet weak var goodDaudzums: UILabel!
    @IBOutlet weak var goodSumma: UILabel!
    
    //MARK: - Data
    var good: Prece? {
        didSet {
            if let detail = self.good {
                self.goodArtikuls?.text = detail.article
                self.goodNosaukums?.text = detail.name
                self.goodDaudzums?.text = String(detail.amount)
                self.goodSumma?.text = priceFormat(price: detail.subtotal)
            }
            else {
                self.goodArtikuls?.text = nil
                self.goodNosaukums?.text = nil
                self.goodDaudzums?.text = nil
                self.goodSumma?.text = nil
            }
        }
    }
}





