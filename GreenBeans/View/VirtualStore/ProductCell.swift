//
//  ProductCell.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 12/5/1399 AP.
//

import SwiftUI
import Kingfisher

struct ProductCell: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
//                KFImage(URL(string: product.productImageUrl))
//                    .resizable()
//                    .scaledToFill()
//                    .clipped()
//                    .frame(width: 56, height: 56)
//                    .cornerRadius(56 / 2)
//                    .padding(.leading)
                Text("Image")
                    .frame(width: 85, height: 90)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(product.productTitle)
                            .font(.system(size: 18, weight: .semibold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            
                        

                        Spacer()
                        
                        Text(product.productPrice)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.trailing)
                            .padding(.leading)
                    }
                    
                    Text(product.productDescription)
                        .foregroundColor(.black)
                        .font(.system(size: 12, weight: .regular))
                }
            }
            .padding(.bottom)
            .padding(.trailing)
            
//            TweetActionsView(tweet: tweet)
            
            Divider()
        }
        .padding(.leading, -16)
    }
}
