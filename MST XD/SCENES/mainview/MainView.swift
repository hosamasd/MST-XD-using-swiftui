//
//  MainView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct MainView: View {
    
    @State var selected = "Home"
    var tabs = ["Home","Cart","Notifications","More"]
    @StateObject var vm = MainViewModel()
    @Environment(\.localStatusBarStyle) var statusBarStyle

    var body: some View {
        NavigationView{
            
            
            VStack(spacing:-8){
                
                
                if self.selected == "Home"{
                    HomeScreen()
                    //                   BookmarkHome()
                }
                
                else  if self.selected == "Cart"{
                    HomeShopping()
                        .environmentObject(vm)
                    //                    Home()
                }
                
                else  if self.selected == "Notifications"{
                    NotificationView()
                        .environmentObject(vm)
                    //                    Home()
                }
                else{
                    AboutUsView()
                        .environmentObject(vm)
                    //                    DownloadHome()
                }
                
                if !vm.hideTab {
                RabBarView(selected: $selected)
                    .frame(height:60)
                    .background(
                        
                        !vm.makeBlue ? Color.clear : Color.black.opacity(0.3)
                        
//                        Color.black.opacity(0.3)
                            .opacity(vm.hideTab ? 1 : 0)
                    )
            }
            }
//            .background(Color.red)
            .background(
                vm.makeBlue ?
                    Color.black.opacity(0.2)
                    .edgesIgnoringSafeArea(.all)


            //opacity(0.3)
                :
                    Color.clear.edgesIgnoringSafeArea(.all)
            )
            
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
        }
       
        .onAppear {
            self.statusBarStyle.currentStyle = .lightContent
        } 
//        .ignoresSafeArea(.all, edges: .bottom)
//        .background(Color.red.opacity(0.06).ignoresSafeArea(.all, edges: .all))
//        .padding(.bottom , bottom != 0 ? 15 : 0)
       

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
