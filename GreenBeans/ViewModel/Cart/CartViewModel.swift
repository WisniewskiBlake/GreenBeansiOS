//
//  CartViewModel.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 12/10/1399 AP.
//

import SwiftUI
import Firebase

class CartViewModel: ObservableObject {
    @Published var products = [Product]()
    
    init() {
        getUserCart()
    }
    
    //need to assign each document grabbed to a position in a [Product] array that can be displayed
    func getUserCart() {
        
        Firestore.firestore().collection("Users").document(AuthViewModel.shared.userSession!.uid).collection("Kart").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            
            documents.forEach { document in
                Firestore.firestore().collection("Users").document(AuthViewModel.shared.userSession!.uid).collection("Kart").document(document.documentID).getDocument { snapshot, _ in
                    guard let data = snapshot?.data() else { return }
                    self.products.append(Product(dictionary: data))
                }
            }
        }
        
    }
    
}

