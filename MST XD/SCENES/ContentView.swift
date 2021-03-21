//
//  ContentView.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct ContentView: View {
//    @State var te = ""
    @State var show = false
    @State var isActive:Bool = false
    var body: some View {
//        ThirdMainView()
//        FinishCheckout(show: .constant(false))
//        Splash()
        
        ZStack {

//            if self.isActive {
                         
                NavigationView{
                    Home(showss: $show)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                }

                if show {
                    ThirdMainView()
                        .transition(.move(edge: .bottom))
                }
                
            }
//                       } else {
//                           // 4.
//                          Splash()
//                       }
//
////            NavigationView{
////                Home(showss: $show)
////                .navigationBarTitle("")
////                .navigationBarHidden(true)
////                .navigationBarBackButtonHidden(true)
////            }
////
////            if !show {
////                ThirdMainView()
////                    .transition(.move(edge: .bottom))
//            }
//        }
//        .onAppear {
//                   // 6.
//            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
//                       // 7.
//                       withAnimation {
//                           self.isActive = true
//                       }
//                   }
//               }
        
//        SettingsView(dismiss: .constant(false))
//        ThirdMainView()
//        MyHostingController(rootView:AboutUsView())
//        MainView()
//        MainView()
//        SettingsView( dismiss: .constant(false))
//        BuySuccessView()
//        FinishCheckout(show: .constant(false), name: $te)
//        CheckoutBuy(show: .constant(false), items: .constant([
//            .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.5, count: 2),
//
//            .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 1),
//            .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.5, count: 2),
//
//            .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 1)
//        ]))
//        HomeShopping()
//        ProductDetail(cat:         Details(title: "iPhone 8 Plus\n 64GB Gold", pic: "Mask Group 3", price: "579$"), show: .constant(false))
//        MainView()
        
//        HomeDetail(cat:  Category(title: "WELCOME        ", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "mobile",color:Color("f")))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
