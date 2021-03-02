//
//  User.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import Firebase

struct User: Identifiable {
    let id = UUID()
    let fullname: String
    let address: String
    var cart: [Product]
    var orderHistory: [Order]

    
    init(dictionary: [String: Any]) {
        self.address = dictionary["address"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.orderHistory = (dictionary["OrderHistory"] as? [Order] ?? [])
        self.cart = (dictionary["Kart"] as? [Product] ?? [])
    }
}


