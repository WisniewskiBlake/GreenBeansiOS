//
//  ProductDetailView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/27/1399 AP.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    @State private var currentValue = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Image")
                .frame(width: UIScreen.screenWidth - 50, height: (UIScreen.screenHeight * 0.5) - 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(8)
                .padding(.leading)
                .padding(.trailing)
            
            HStack {
                
                Text(product.productTitle)
                    .font(.system(size: 24, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.trailing)
                
                
                
                
                Text(product.productPrice)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.trailing)
                    
                
            }
            .padding(.horizontal)
            .fixedSize(horizontal: false, vertical: true)
               
            Text(product.productDescription)
                .foregroundColor(.black)
                .font(.system(size: 15, weight: .regular))
                .padding(.leading)
                .padding(.trailing)
            
            Spacer()
            
            VStack(spacing: 20) {
                HStack(spacing: 20) {
                    //for quantity selection, plus/minus button
                    Button(action: {
                        if(self.currentValue != 0) {
                            self.currentValue -= 1
                        }
                    }, label: {
                        Text("-")
                            .font(.system(size: 23, weight: .semibold))
                    })
                    
                    Text("\(currentValue)")
                        .frame(width: 55, height: 35, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .multilineTextAlignment(.center)
                    
                    Button(action: {self.currentValue += 1}, label: {
                        Text("+")
                            .font(.system(size: 23, weight: .semibold))
                    })
                }
                Button(action: {self.currentValue += 1}, label: {
                    Text("Add To Cart")
                        .frame(width: UIScreen.screenWidth - 50, height: 45, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                })
            }
            Spacer()
            
            
        }
        .padding()
    }
}


