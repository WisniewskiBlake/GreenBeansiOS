//
//  SideMenuView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/26/1399 AP.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedIndex: Int
    
    var body: some View {        
        
        Spacer()
        VStack {
            SideMenuHeaderView(show: $isShowing)
                .frame(height: 200)

            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                        if option == .startOrder {
                            NavigationLink(
                                destination: StartOrderView(),
                                label: {
                                    SideMenuOptionView(option: option)
                                })
                            .frame(height: 15)
                            .padding()
                        }
                        else if option == .virtualStore {
                            NavigationLink(
                                destination: VirtualStoreView(),
                                label: {
                                    SideMenuOptionView(option: option)
                                })
                            .frame(height: 15)
                            .padding()
                        } else if option == .cart {
                            NavigationLink(
                                destination: CartView(),
                                label: {
                                    SideMenuOptionView(option: option)
                                })
                            .frame(height: 15)
                            .padding()
                        } else if option ==
                                    .orderHistory {
                            NavigationLink(
                                destination: OrderHistoryView(),
                                label: {
                                    SideMenuOptionView(option: option)
                                })
                            .frame(height: 15)
                            .padding()
                        } else if option == .logout {
                            Button(action: { AuthViewModel.shared.signOut() }) {
                                SideMenuOptionView(option: option)
                                    .frame(height: 20)
                                    .padding()
                            }
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
        
    }
}

