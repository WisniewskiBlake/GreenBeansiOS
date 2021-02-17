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
                        if option == .virtualStore {
                            //NEED TO USE BUTTON HERE LIKE ABOVE THEN USE NAVIGATION LINKS TO GO TO PAGES
                            //BEYOND THE ONES IN SIDE MENU EX StartOrderView->DeliveryPage
                            Button(action: { selectedIndex = 0
                                    self.isShowing.toggle() }) {
                                SideMenuOptionView(option: option)
                                    .frame(height: 20)
                                    .padding()
                            }
                            
                        } else if option == .cart {
                            Button(action: { selectedIndex = 1
                                self.isShowing.toggle()
                            }) {
                                SideMenuOptionView(option: option)
                                    .frame(height: 20)
                                    .padding()
                            }
                        } else if option ==
                                    .orderHistory {
                            Button(action: { selectedIndex = 2
                                self.isShowing.toggle()
                            }) {
                                SideMenuOptionView(option: option)
                                    .frame(height: 20)
                                    .padding()
                            }
                        } else if option ==
                                    .settings {
                            Button(action: { selectedIndex = 3
                                self.isShowing.toggle()
                            }) {
                                SideMenuOptionView(option: option)
                                    .frame(height: 20)
                                    .padding()
                            }
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

