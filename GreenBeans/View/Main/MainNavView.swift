//
//  MainNavView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/28/1399 AP.
//

import SwiftUI

struct MainNavView: View {        
    @Binding var selectedIndex: Int
    
    var body: some View {
        VStack {
            if selectedIndex == 0 {
                VirtualStoreView()
            } else if selectedIndex == 1 {
                CartView()
            } else if selectedIndex == 2 {
                OrderHistoryView()
            } else if selectedIndex == 3 {
                SettingsView()
            }
        }
        
            
        
    }
    
    
    
}



