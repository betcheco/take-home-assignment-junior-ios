//
//  ViewController.swift
//  EasyShopper
//
//  Created by Morten Bek Ditlevsen on 11/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import UIKit

#warning("""
The initial viewcontroller should show the shopping basket.
It should contain a 'Plus' button for adding new items to the basket.
It should contain a 'Clear' button for removing all items in the basket.
""")

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBAction func clearButtonOnTapped(_ sender: UIButton) {
    }
    @IBOutlet weak var labelTotalPrice: UILabel!
    @IBOutlet weak var shoppingListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                  return 0
              }
              
              func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                  let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingListCell", for: indexPath) as! ShoppingListTableViewCell
               
               cell.labelName.text = "Articulo uno"
                 // cell.labelCell.text = articleList.items[indexPath.row].name
                  return cell
              }
}
