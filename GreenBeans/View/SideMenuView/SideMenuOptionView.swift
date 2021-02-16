//
//  SideMenuOptionView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import SwiftUI

struct SideMenuOptionView: View {
    let option: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 5) {
//            Image(systemName: option.imageName)
//                .foregroundColor(.black)
//                .font(.system(size: 24))

            Text(option.description)
                .foregroundColor(.black)

            Spacer()
        }
    }
}
