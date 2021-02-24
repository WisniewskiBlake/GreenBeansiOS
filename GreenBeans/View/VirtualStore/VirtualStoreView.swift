//
//  VirtualStoreView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import SwiftUI

struct VirtualStoreView: View {
    @ObservedObject var viewModel = VirtualStoreViewModel()
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(
                    destination: FlowerView(viewModel: viewModel),
                    label: {
                        Text("Flower")
                            .frame(width: 125, height: 100, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                    }).padding(.leading, UIScreen.screenWidth * 0.1)

                
                Spacer()
                
                NavigationLink(
                    destination: ConcentrateView(),
                    label: {
                        Text("Concentrate")
                            .frame(width: 125, height: 100, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                    })
                
                Spacer()
                
            }
            
            
            
            HStack {
                NavigationLink(
                    destination: MerchView(),
                    label: {
                        Text("Merch")
                            .frame(width: 125, height: 100, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                    }).padding(.leading, UIScreen.screenWidth * 0.1)
                
                Spacer()
                
                NavigationLink(
                    destination: EdibleView(),
                    label: {
                        Text("Edible")
                            .frame(width: 125, height: 100, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                    })
                
                Spacer()
                
            }
            .padding(.top, UIScreen.screenHeight * 0.05)
            .padding(.bottom, UIScreen.screenHeight * 0.3)
        }
    }
}

struct VirtualStoreView_Previews: PreviewProvider {
    static var previews: some View {
        VirtualStoreView()
    }
}
