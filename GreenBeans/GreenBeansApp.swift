//
//  GreenBeansApp.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/24/1399 AP.
//

import SwiftUI
import Firebase

@main
struct GreenBeansApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
