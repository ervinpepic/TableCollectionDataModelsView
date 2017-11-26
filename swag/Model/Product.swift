//
//  Product.swift
//  swag
//
//  Created by Ervin Pepic on 11/26/17.
//  Copyright © 2017 Ervin Pepic. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
