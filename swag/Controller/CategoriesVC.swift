//
//  ViewController.swift
//  swag
//
//  Created by Ervin Pepic on 11/26/17.
//  Copyright © 2017 Ervin Pepic. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var cateogryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        cateogryTable.dataSource = self
        cateogryTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.fetCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.fetCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else {
            return CategoryCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.fetCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC =  segue.destination as? ProductsVC {
            
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
            
            
        }
    }



}

