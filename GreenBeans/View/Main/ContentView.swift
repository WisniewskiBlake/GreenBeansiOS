//
//  SwiftUIView.swift
//  GreenBeans
//
//  Created by Blake Wisniewski on 11/24/1399 AP.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var showingMenu = false
    @State private var selectedIndex = 0
//    @State private var showingMenu = false
        
    var body: some View {
        Group {
            if viewModel.userSession != nil {
//                NavigationView {
//                    ZStack {
////                        if showingMenu {
////                            SideMenuView(isShowing: $showingMenu)
////                                .padding(.top, 44)
////                                .ignoresSafeArea()
////                        }
//
////                        StartOrderView()
////                            .cornerRadius(showingMenu ? 20 : 10)
////                            .ignoresSafeArea()
////                            .navigationBarTitle(viewModel.tabTitle(forIndex: selectedIndex))
////                            .navigationBarTitleDisplayMode(.inline)
////                            .offset(x: showingMenu ? 300 : 0, y: showingMenu ? 44 : 0)
////                            .opacity(showingMenu ? 0.25 : 1)
////                            .scaleEffect(showingMenu ? 0.9 : 1)
////                            .shadow(color: self.showingMenu ? .black : .clear, radius: 20, x: 0, y: 0)
////                            .disabled(showingMenu)
////                            .navigationBarItems(leading: menuButton,
////                                                trailing: selectedIndex == 0 ? refreshButton : nil)
//
//
//
//                    }.onAppear(perform: {
//                        self.showingMenu = false
//                    })
//                }
                NavigationView {
                    ZStack {
                        if showingMenu {
                            SideMenuView(isShowing: $showingMenu, selectedIndex: $selectedIndex)
                                .padding(.top, 44)
                                .ignoresSafeArea()
                        }

                        MainNavView()
                            
    //
    //
                    }
                    
                }
                .cornerRadius(showingMenu ? 20 : 10)
                .ignoresSafeArea()
                .navigationBarTitle("Green Beans")
                .navigationBarTitleDisplayMode(.inline)
                .offset(x: showingMenu ? 300 : 0, y: showingMenu ? 44 : 0)
                .opacity(showingMenu ? 0.25 : 1)
                .scaleEffect(showingMenu ? 0.9 : 1)
                .shadow(color: self.showingMenu ? .black : .clear, radius: 20, x: 0, y: 0)
                .disabled(showingMenu)
                .navigationBarItems(leading: menuButton,
                                    trailing: selectedIndex == 0 ? refreshButton : nil)
                .onAppear(perform: {
                    self.showingMenu = false
                })
                
                
                
            } else {
                LoginView()
            }
            
        }
    }
    
    var menuButton: some View {
        Button(action: {
            withAnimation(.spring()) {
                self.showingMenu.toggle()
            }
        }, label: {
                Image(systemName: "note.text")
                    .resizable()
//                    .foregroundColor(.black)
                    .scaledToFill()
                    .clipped()
                    .frame(width: 32, height: 32)

                    .cornerRadius(16)

        })
    }
    var refreshButton: some View {
        Button(action: {
         //   feedViewModel.fetchTweets()
        }, label: {
            Image(systemName: "arrow.clockwise")
                .foregroundColor(.black)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
