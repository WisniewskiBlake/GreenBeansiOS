//
//  CartView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/24/1399 AP.
//

import SwiftUI

struct CartView: View {    
    @ObservedObject var viewModel = CartViewModel()
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    
                    if(!viewModel.products.isEmpty) {
                        ForEach(viewModel.products) { product in
                            NavigationLink(destination: ProductDetailView(product: product)) {
                                CartCell(product: product)
                            }
                        }
                    } else {
                        
                    }
                    
                }
                .padding()
            }
            .padding(.top, UIScreen.screenHeight * 0.11)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
