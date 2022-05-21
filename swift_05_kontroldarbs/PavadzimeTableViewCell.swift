//
//  PavadzimeTableViewCell.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 17/05/2022.
//

import UIKit

class PavadzimeTableViewCell: UITableViewCell {
    @IBOutlet weak var pavNumurs: UILabel!
    @IBOutlet weak var pavData: UILabel!
    @IBOutlet weak var pavConsignee: UILabel!
    @IBOutlet weak var pavConsigneeAddress: UILabel!
    @IBOutlet weak var pavConsigneePhone: UILabel!
    @IBOutlet weak var pavTotal: UILabel!
    
    // MARK: - data
        var pavMadeData:Pavadzime? {
            didSet {
                if let made = self.pavMadeData {
                    self.pavNumurs?.text = made.pavNumber
                    self.pavData?.text = "String(made.pavData)"
                    self.pavConsignee?.text = made.pavConsignee
                    self.pavConsigneeAddress?.text = made.pavConigneeAddress
                    self.pavConsigneePhone?.text = made.pavConsigneePhone
                    self.pavTotal?.text = String(made.pavTotal)
              }
                else {
                    self.pavNumurs?.text = nil
                    self.pavData?.text = nil
                    self.pavConsignee?.text = nil
                    self.pavConsigneeAddress?.text = nil
                    self.pavConsigneePhone?.text = nil
                    self.pavTotal?.text = nil
                }
            }
        }

    
    
    
    
    
}
