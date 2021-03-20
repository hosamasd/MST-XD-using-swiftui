//
//  ThirdMainView.swift
//  MST XD
//
//  Created by hosam on 3/20/21.
//

import SwiftUI

struct ThirdMainView: View {
    
    @State var selected = "Home"
    var tabs = ["Home","Cart","Notifications","More"]
    @StateObject var vm = MainViewModel()
    @Environment(\.localStatusBarStyle) var statusBarStyle
    
    var body: some View {
        ZStack {
            
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
                    .frame(height:60)
                    .background(
                        
                        !vm.makeBlue ? Color.clear : Color.black.opacity(0.3)
                        
//                        Color.black.opacity(0.3)
                            .opacity(vm.hideTab ? 1 : 0)
                    )
            }
                    
                }
                .padding(.bottom)
                .background(
                    !vm.makeBlue ? Color.clear : Color.black.opacity(0.3)
                ).ignoresSafeArea()
            }
        }
    }
}

struct ThirdMainView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdMainView()
    }
}
