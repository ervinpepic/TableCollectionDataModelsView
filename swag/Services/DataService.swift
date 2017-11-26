//
//  DataService.swift
//  swag
//
//  Created by Ervin Pepic on 11/26/17.
//  Copyright © 2017 Ervin Pepic. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Hat with dev logo", price: "$18", imageName: "hat01.png"),
        Product(title: "Hat black with logo", price: "$21", imageName: "hat02.png"),
        Product(title: "Hat white with logo", price: "$24", imageName: "hat03.png"),
        Product(title: "Hat blue with logo", price: "$21", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Hoodie 1", price: "$21", imageName: "hoodie01.png"),
        Product(title: "Hoodie 2", price: "$21", imageName: "hoodie01.png"),
        Product(title: "Hoodie 3", price: "$21", imageName: "hoodie02.png"),
        Product(title: "Hoodie 4", price: "$21", imageName: "hoodie03.png"),
    ]
    
    private let shirts = [
        Product(title: "Shirt 1", price: "$21", imageName: "shirt01.png"),
        Product(title: "Shirt 2", price: "$21", imageName: "shirt02.png"),
        Product(title: "Shirt 3", price: "$21", imageName: "shirt03.png"),
        Product(title: "Shirt 4", price: "$21", imageName: "shirt04.png"),
        Product(title: "Shirt 5", price: "$21", imageName: "shirt05.png"),
        ]
    
    
    private let digitalGoods = [Product]()
    
    func fetCategories() -> [Category]{
        return categories
        
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoodies()
        default:
            return getShirts()
        }
    }
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoodies() -> [Product] {
        return digitalGoods
    }
}
