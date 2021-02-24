//
//  VirtualStoreViewModel.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/27/1399 AP.
//

import SwiftUI

class VirtualStoreViewModel: ObservableObject {
    @Published var products = [Product]()
    @Published var flowerProducts = [Product]()
    @Published var concentrateProducts = [Product]()
    @Published var merchProducts = [Product]()
    @Published var edibleProducts = [Product]()
    
    init() {
        fetchFlowerProducts()
    }
    
    func fetchFlowerProducts() {
        COLLECTION_PRODUCTS.whereField("productType", isEqualTo: "Flower").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.flowerProducts = documents.map({ Product(dictionary: $0.data()) })
        }
    }
    
}
