//
//  DetailFootherCell.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 18/05/2022.
//

import Foundation
import UIKit

class DetailFootherCell:UITableViewCell {

// MARK: - Outlets
    @IBOutlet weak var detailTotal: UILabel!
    
// MARK: - data
    var pavadzime: Pavadzime? {
        didSet {
            if let detail = self.pavadzime {
                self.detailTotal?.text = "Kopējā summa " + priceFormat(price: detail.pavTotal)
            }
            else {
                self.detailTotal?.text = nil
            }
        }
    }

}
