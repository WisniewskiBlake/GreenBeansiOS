//
//  Product.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/27/1399 AP.
//

import Firebase

struct Product: Identifiable, Hashable {
    let id: String
    let highlightedProduct: String
    let productDescription: String
    let productTitle: String
    let productPrice: String
    let productType: String
    let productImageUrl: String

        
    init(dictionary: [String: Any]) {
        self.id = dictionary["id"] as? String ?? ""
        self.highlightedProduct = dictionary["highlightedProduct"] as? String ?? ""
        self.productDescription = dictionary["productDescription"] as? String ?? ""
        self.productTitle = dictionary["productTitle"] as? String ?? ""
        self.productPrice = dictionary["productPrice"] as? String ?? ""
        self.productType = dictionary["productType"] as? String ?? ""
        self.productImageUrl = dictionary["productImageUrl"] as? String ?? ""
    }
    
    
}
