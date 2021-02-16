//
//  StartOrderView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import SwiftUI

struct StartOrderView: View {
    var body: some View {
        VStack {
                    HStack {
                        Button(action: {
                            print("Tapped")
                        }, label: {
                            Text("Delivery")
                                .frame(width: 100, height: 100, alignment: .center)
                                
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(8)
                                .multilineTextAlignment(.center)
                                
                            
                        }).padding(.leading, UIScreen.screenWidth * 0.15)
                        Spacer()
                        Button(action: {
                            print("Tapped")
                        }, label: {
                            Text("Pickup")
                                .frame(width: 100, height: 100, alignment: .center)
                                
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(8)
                                .multilineTextAlignment(.center)
                                
                            
                        })
                        Spacer()
                    }
                    Spacer()
        }.padding(.top, UIScreen.screenHeight * 0.48)
    }
}

struct StartOrderView_Previews: PreviewProvider {
    static var previews: some View {
        StartOrderView()
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
