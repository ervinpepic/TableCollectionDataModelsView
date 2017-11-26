//
//  ProductCell.swift
//  swag
//
//  Created by Ervin Pepic on 11/26/17.
//  Copyright © 2017 Ervin Pepic. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(products: Product) {
        productImage.image = UIImage(named: products.imageName)
        productTitle.text = products.title
        productPrice.text = products.price
    }
}
