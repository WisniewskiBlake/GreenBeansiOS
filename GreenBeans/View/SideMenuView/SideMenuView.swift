//
//  SideMenuView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {        
        if let user = AuthViewModel.shared.user {
            VStack {
                SideMenuHeaderView(show: $isShowing)
                    .frame(height: 200)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                            if option == .startOrder {
                                NavigationLink(
                                    destination: LazyView(UserProfileView(user: user)),
                                    label: {
                                        SideMenuOptionView(option: option)
                                    })
                                .frame(height: 40)
                                .padding()
                            } else if option == .logout {
                                Button(action: { AuthViewModel.shared.signOut() }) {
                                    SideMenuOptionView(option: option)
                                        .frame(height: 40)
                                        .padding()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

