//
//  Product.swift
//  EasyShopper
//
//  Created by Morten Bek Ditlevsen on 11/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import Foundation

struct Product: Decodable {
    let barcode, productDescription, id: String
    let imageURL: String
    let name: String
    let retailPrice: Int
    let costPrice: Int?

    enum CodingKeys: String, CodingKey {
        case barcode
        case productDescription = "description"
        case id
        case imageURL = "image_url"
        case name
        case retailPrice = "retail_price"
        case costPrice = "cost_price"
    }
}
