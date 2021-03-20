//
//  SecondMainView.swift
//  MST XD
//
//  Created by hosam on 3/20/21.
//

import SwiftUI

struct SecondMainView: View {
    @State var selected = "Home"
    var tabs = ["Home","Cart","Notifications","More"]
    @StateObject var vm = MainViewModel()
    @Environment(\.localStatusBarStyle) var statusBarStyle
    
//    init() {
//        UITabBar.appearance().backgroundColor =  !vm.makeBlue ? UIColor(Color.clear) : UIColor(Color.black.opacity(0.3))
//       }
//
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        TabView {
            
            //charcter view
            HomeScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                    //environment
                        .environmentObject(vm)
                    
            HomeShopping()
                .environmentObject(vm)
                        .tabItem {
                            Image(systemName: "cart")
                            Text("Cart")
                        }
                .environmentObject(vm)
                
            NotificationView()
                .tabItem {
                    Image(systemName: "scalemass")
                    Text("Notifications")
                }
                .environmentObject(vm)
            
            
            AboutUsView()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }
                .environmentObject(vm)
            
        }
        .background(Color.red)
        .onAppear(perform: {
            UITabBar.appearance().backgroundColor =  UIColor(Color.red)//!vm.makeBlue ? UIColor(Color.red) : UIColor(Color.black.opacity(0.3))
        })
//        .onReceive(timer, perform: { _ in
//            UITabBar.appearance().backgroundColor =  !vm.makeBlue ? UIColor(Color.red) : UIColor(Color.black.opacity(0.3))
//        })
    }
}

struct SecondMainView_Previews: PreviewProvider {
    static var previews: some View {
        SecondMainView()
    }
}
