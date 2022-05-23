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
                    self.pavNumurs?.text = "NR. " + made.pavNumber
                    self.pavData?.text = "String(made.pavData)"
                    self.pavConsignee?.text = made.pavConsignee
                    self.pavConsigneeAddress?.text = "Adrese:\n" + (made.pavConigneeAddress ?? "nav zināāma")
                    self.pavConsigneePhone?.text = "Tālr.: " + (made.pavConsigneePhone ?? "nav zināms")
                    let total = (made.pavTotal * 100.0).rounded()/100
                    self.pavTotal?.text = String(total) + " EUR"
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
