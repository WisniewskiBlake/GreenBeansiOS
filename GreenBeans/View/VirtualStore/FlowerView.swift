//
//  FlowerView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 12/5/1399 AP.
//

import SwiftUI

struct FlowerView: View {
    @ObservedObject var viewModel: VirtualStoreViewModel
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.flowerProducts) { product in
                        NavigationLink(destination: ProductDetailView(product: product)) {
                            ProductCell(product: product)
                        }
                    }
                }.padding()
            }
        }
    }
}


