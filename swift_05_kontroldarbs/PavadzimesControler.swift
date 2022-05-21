//
//  PavadzimesControler.swift
//  swift_05_kontroldarbs
//
//  Created by Paulis Zabarovskis on 18/05/2022.
//

import Foundation
import UIKit

class PavadzimeController: UITableViewController {
// MARK: - Data model
    var pavadzimes = [Pavadzime]()
    var preces = [Prece]()



    override func viewDidLoad() {
        super.viewDidLoad()
// Load/create data
        self.loadData()
    }
    func loadData() {
        preces = [Prece(article: "89480", name: "Kreppapīrs", price: 0.5, amount: 20),
                  Prece(article: "DX18081", name: "DEXLER bezvadu Bluetooth V4.2 + EDR skaļrunis 2 x 3W, meln", price: 42.81, amount: 1),
                  Prece(article: "92027", name: "Uzlīmju noņemšanas sprejs 200 ml FOROFIS", price: 9.71, amount: 20),
                  Prece(article: "DX18011", name: "DEXLER Universāls Micro USB uz USB Datu & Ātrās Uzlādes 2 A kabelis 1M", price: 2.46, amount: 3),
                  Prece(article: "9501", name: "Sejas aizsargmaskas melna krāsa PP 3-kārtas (50gab.)", price: 8.44, amount: 130),
                  Prece(article: "3897", name: "LONSTINE Antibakteriālais roku dezinfekcijas līdzeklis 60 ml", price: 1.55, amount: 34),
                  Prece(article: "ALC294039", name: "Viskijs Jameson Black Barrel 40% 0,7l", price: 40.99, amount: 1),
                  Prece(article: "87 01 125", name: "KNIPEX High-tech Stangas Cobra® 125", price: 15.73, amount: 3),
                  Prece(article: "345678", name: "Laistīšanas lenta 16mm Aqua Tape 8mil x 0,10cm Ražotājvalsts – Itālija", price: 0.10, amount: 100),
                  Prece(article: "987654321", name: "T-tape savienotājs ar  ventili", price: 1.00, amount: 30)
        ]
        pavadzimes = [Pavadzime(pavNumber: "PV 20304050",
                                pavData: Date(),
                                pavConsignee: "SIA Palmas Zars",
                                pavConigneeAddress: "Burvības iela 38, Rīga LV1000, Latvija",
                                pavConsigneePhone: "29292929",
                                pavGoods: [preces[0], preces[2], preces[4], preces[6]]),
                      Pavadzime(pavNumber: "320-248",
                                pavData: Date(),
                                pavConsignee: "SIA Auzas Tautu Meita",
                                pavConigneeAddress: "Trīsnaglu iela 7/25, Valmiera, LV0000, Latvija",
                                pavConsigneePhone: "31313131",
                                pavGoods: [preces[1], preces[2], preces[5], preces[7]]),
                      Pavadzime(pavNumber: "01-02-0345",
                                pavData: Date(),
                                pavConsignee: "Bigtrash Ltd",
                                pavConigneeAddress: "Bigtrashstreet 328, Petersbrow, 40020, UK",
                                pavConsigneePhone: "+44 320 94856",
                                pavGoods: [preces[9], preces[8], preces[7], preces[6]]),
                      Pavadzime(pavNumber: "234567098",
                                pavData: Date(),
                                pavConsignee: "Ooulurepo OY",
                                pavConigneeAddress: "Helsinkigaate 32-24, Ooulu, 39393, Finland",
                                pavConsigneePhone: "+358 (0) 45678 90",
                                pavGoods: [preces[4], preces[9], preces[1]]),
                      Pavadzime(pavNumber: "PV 168/13-2087",
                                pavData: Date(),
                                pavConsignee: "DJ dižSKAbārdis",
                                pavConigneeAddress: "Empīriskā dipersija, Mazpisānu pag. Lielautu nov. 6782",
                                pavConsigneePhone: "+371 6776677667",
                                pavGoods: [preces[5], preces[4], preces[9], preces[6]])
                                          ]
        
        
    }
    
    // Sekciju skaits
        override func numberOfSections(in tableView: UITableView) -> Int {
           return 1
        }
    // Sunu skaits sekcija
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return pavadzimes.count
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pavCellIdentifier") as? PavadzimeTableViewCell
        let pavadzime = pavadzimes[indexPath.row]
        cell?.pavMadeData = pavadzime
        return cell!
    }


    
    
    
}