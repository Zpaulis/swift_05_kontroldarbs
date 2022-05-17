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
                let dateFormatterPrint = DateFormatter()
                dateFormatterPrint.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let datums = dateFormatterPrint.string(from: detail.pavData)
                self.detailData?.text = datums
                self.detailConsignee?.text = detail.pavConsignee
            }
            else {
                self.detailData?.text = nil
                self.detailConsignee?.text = nil
            }
        }
    }

}
