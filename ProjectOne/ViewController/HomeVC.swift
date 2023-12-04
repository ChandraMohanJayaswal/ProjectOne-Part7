//
//  HomeVC.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 10/08/2023.
//

import UIKit

class HomeVC: BaseVC {
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dataHandlerOne = DataHandler.shared
        let dataHandlerTwo = DataHandler.shared
    }
    
    @IBAction func btnSignOutAction(_ sender: Any) {
        self.moveToLoginVC()
    }
    
}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataHandler.shared.getCategoryList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellCategory = tblView.dequeueReusableCell(withIdentifier: "cellMessage")! as! CellCategory
        
        let category = DataHandler.shared.getCategoryList()[indexPath.row]

        
        cell.lblName.text = category.name
        return cell
    }
    
    
}
