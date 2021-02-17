//
//  VirtualStoreView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import SwiftUI

struct VirtualStoreView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    print("Tapped")
                    }, label: {
                        Text("Flower")
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
                        Text("Concentrate")
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                })
                
                Spacer()
                
            }
            
            
            
            HStack {
                Button(action: {
                    print("Tapped")
                    }, label: {
                        Text("Merch")
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                }).padding(.leading, UIScreen.screenWidth * 0.15)
                
                Spacer()
                
                Button(action: {
                    print("")
                    }, label: {
                        Text("Edible")
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                })
                
                Spacer()
                
            }.padding(.top, UIScreen.screenHeight * 0.15)
        }
    }
}

struct VirtualStoreView_Previews: PreviewProvider {
    static var previews: some View {
        VirtualStoreView()
    }
}
