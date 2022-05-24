//
//  DetailHeaderCell.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 17/05/2022.
//

import Foundation
import UIKit

class DetailHeaderCell:UITableViewCell {

// MARK: - Outlets

    @IBOutlet weak var detailData: UILabel!
    @IBOutlet weak var detailConsignee: UILabel!

// MARK: - data
    var pavadzime: Pavadzime? {
        didSet {
            if let detail = self.pavadzime {
               self.detailData?.text = datePrint(date: detail.pavData)
                self.detailConsignee?.text = detail.pavConsignee
            }
            else {
                self.detailData?.text = nil
                self.detailConsignee?.text = nil
            }
        }
    }

}
