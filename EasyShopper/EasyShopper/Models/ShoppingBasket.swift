//
//  ShoppingBasket.swift
//  EasyShopper
//
//  Created by Morten Bek Ditlevsen on 11/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import Foundation

class ShoppingBasket{
    var products:[Product]
    var totalPrice:Double
    
    init() {
        self.products = []
        self.totalPrice = 0
    }
    
    func addProduct(pProduct:Product) {
        //Add a product to the array of products and calculate the total price.
        self.products.append(pProduct)
        self.totalPrice += Double(pProduct.retailPrice)
    }
    
    func removeProduct(pProduct:Product) {
        //Its should look for the element in the array and remove it.
        //TODO
    }
    
    func clearBasket() {
        self.products.removeAll()
        self.totalPrice = 0
    }
}
