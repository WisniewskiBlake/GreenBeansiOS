//
//  Order.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import Foundation

class Order {
    let subtotal: String
    var total: String
    var tax: String
//    let address: String

    init(dictionary: [String: Any]) {        
//        self.address = dictionary["address"] as? String ?? ""
        self.subtotal = dictionary["subtotal"] as? String ?? ""
        self.tax = dictionary["tax"] as? String ?? ""
        self.total = dictionary["total"] as? String ?? ""
    }
}
