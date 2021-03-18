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
    var body: some View {
        NavigationView{
            
            
            VStack{
                
                
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
            }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
