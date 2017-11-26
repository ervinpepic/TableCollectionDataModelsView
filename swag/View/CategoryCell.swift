//
//  CategoryCellTableViewCell.swift
//  swag
//
//  Created by Ervin Pepic on 11/26/17.
//  Copyright © 2017 Ervin Pepic. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }

}
