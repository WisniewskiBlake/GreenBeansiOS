//
//  SideMenuViewModel.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case startOrder
    case virtualStore
    case cart
    case orderHistory
    case logout
    
    var description: String {
        switch self {
        case .startOrder: return "Start Order"
        case .virtualStore: return "Virtual Store"
        case .cart: return "Cart"
        case .orderHistory: return "Order History"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .startOrder: return "person"
        case .virtualStore: return "person"
        case .cart: return "person"
        case .orderHistory: return "person"
        case .logout: return "arrow.left.square"
        }
    }
}

