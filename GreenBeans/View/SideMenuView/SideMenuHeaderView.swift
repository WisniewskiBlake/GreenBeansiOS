//
//  SideMenuHeaderView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import SwiftUI

struct SideMenuHeaderView: View {    
    @Binding var show: Bool
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            Button(action: {
                withAnimation(.spring()){
                    self.show.toggle()
                }
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 24))
                    .scaledToFill()
                    .foregroundColor(.black)
                    .shadow(color: .gray, radius: 10, x: 0, y: 0)
            }.padding()
            
            VStack(alignment: .leading) {

                
                Image(systemName: "xmark")
                    .font(.system(size: 24))
                    .scaledToFill()
                    .foregroundColor(.black)
                    .shadow(color: .gray, radius: 10, x: 0, y: 0)
                
                
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(show: .constant(false))
    }
}

