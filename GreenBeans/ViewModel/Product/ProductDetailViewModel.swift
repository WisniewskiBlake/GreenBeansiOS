//
//  ProductDetailViewModel.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 12/6/1399 AP.
//

import SwiftUI
import Firebase

class ProductDetailViewModel: ObservableObject {
//    let product: Product
//    @Published var quantity: Int
    
    
    init() {
        
    }
    
    func addProductToCart(product: Product, quantity: Int) {
        
        let data = ["productDescription": product.productDescription,
                    "productPrice": product.productPrice,
                    "productQuantity": quantity,
                    "productTitle": product.productTitle,
                    "productType": product.productType,
        ] as [String : Any]
        
        Firestore.firestore().collection("Users").document(AuthViewModel.shared.userSession!.uid).collection("Kart").document().setData(data) { _ in
            
        }
        
    }
    
}
