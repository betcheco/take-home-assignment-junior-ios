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
        
        self._shoppingBasket.clearBasket()
        labelTotalPrice.text = String(format:"%.1f", self._shoppingBasket.totalPrice)
    }
    @IBOutlet weak var labelTotalPrice: UILabel!
    @IBOutlet weak var shoppingListTableView: UITableView!
    
    let _shoppingBasket = ShoppingBasket()
    let mockProduct = Product(barcode: "12", productDescription: "qw", id: "qw", imageURL: "https://firebasestorage.googleapis.com/v0/b/ka-ching-base.appspot.com/o/-L9y_Is8egXrldlakwFZ%2Fpublic%2Fproducts%2F95935%2Fimages%2F-LSK44FPvY3qQfcnMlns?alt=media", name: "Mock product", retailPrice:20, costPrice: 0)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        _shoppingBasket.addProduct(pProduct: mockProduct)
        labelTotalPrice.text = String(format:"%.1f", self._shoppingBasket.totalPrice)
        
    

    }
    
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return self._shoppingBasket.products.count
              }
              
              func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                  let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingListCell", for: indexPath) as! ShoppingListTableViewCell
               
               
                cell.labelName.text = self._shoppingBasket.products[indexPath.row].name
                  return cell
              }
}
