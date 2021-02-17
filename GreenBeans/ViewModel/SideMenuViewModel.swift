//
//  SideMenuViewModel.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {    
    case virtualStore
    case cart
    case orderHistory
    case settings
    case logout
    
    var description: String {
        switch self {
        case .virtualStore: return "Virtual Store"
        case .cart: return "Cart"
        case .orderHistory: return "Order History"
        case .settings: return "Settings"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .virtualStore: return "person"
        case .cart: return "person"
        case .orderHistory: return "person"
        case .settings: return "person"
        case .logout: return "arrow.left.square"
        }
    }
}

