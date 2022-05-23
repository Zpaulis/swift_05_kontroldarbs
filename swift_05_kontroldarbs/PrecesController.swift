//
//  PrecesController.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 21/05/2022.
//

import Foundation
import UIKit

class PrecesController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    var pav: Pavadzime?
    
    // MARK: - Outltes

    @IBOutlet weak var detailTableView: UITableView!{
        didSet {
            detailTableView.delegate = self;
            detailTableView.dataSource = self;
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(detailTableView)
    }
    // Sekciju skaits
         func numberOfSections(in tableView: UITableView) -> Int {
           return 1
        }
    // Sunu skaits sekcija
         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if let rindas = pav?.pavGoods.count {
            return rindas
            }
            else {
                return 0
            }
        }
//MARK: - Custom cell
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1") as? DetailCell
        if let good = self.pav?.pavGoods[indexPath.row] {
        cell1?.good = good
        } else {
            cell1?.good = nil
        }
        return cell1!
    }

    // MARK: - Custom section header

         func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let header = tableView.dequeueReusableCell(withIdentifier: "header") as? DetailHeaderCell
            // Made object
            let pavadzime = self.pav
    // Assign data
            header?.pavadzime = pavadzime
            return header
        }

    // MARK: - Custom section foother

         func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
            let foother = tableView.dequeueReusableCell(withIdentifier: "foother") as? DetailFootherCell
            // Made object
            let pavadzime = self.pav
    // Assign data
            foother?.pavadzime = pavadzime
            return foother
        }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    
    
    
}


