////
////  AboutUsView.swift
////  MST XD
////
////  Created by hosam on 3/18/21.
////
//
//import SwiftUI
//
//struct AboutUsView: View {
//    
//    @State var showFirst = false
//    @State var showSecond = false
//    @State var showThird = false
//    @State var showForth = false
//    @State var showCongrate:Bool = false
//    @EnvironmentObject var vmmm:MainViewModel
//    @Environment(\.localStatusBarStyle) var statusBarStyle
//
//    var body: some View {
//        
//        ZStack {
//            
//        
//        VStack(spacing:0){
//            
//            VStack{
//                
//                HStack {
//                    
//                    
//                    
//                    Spacer()
//                    
//                    Text("More")
//                        .font(.title2)
//                        .foregroundColor(.white)
//                    
//                    Spacer()
//                    
//                    
//                    
//                    
//                }
//            }
//            .padding()
//            .padding(.top,top)
//            .background(Color.blue)
//            .padding(.bottom,16)
//            
//            
//            AboutUsRorView(name: "Wishlist", image: "wishlist")
//                .onTapGesture {
//                    withAnimation{
//                        self.showFirst.toggle()
//                        vmmm.hideTab.toggle()
//                    }
//                }
//            
//            AboutUsRorView(name: "Order History", image: "history")
//                .onTapGesture {
//                    withAnimation{
//                        self.showSecond.toggle()
//                        vmmm.hideTab.toggle()
//                    }
//                }
//            AboutUsRorView(name: "News Info", image: "news")
//                .onTapGesture {
//                    withAnimation{
//                        self.showThird.toggle()
//                        vmmm.hideTab.toggle()
//                    }
//                }
//            
//            Spacer()
//                .frame(height:60)
//            
//            AboutUsRorView(name: "Instructions", image: "instructions")
//            
////            NavigationLink(
////                destination:  SettingsView(dismiss: $showForth),
////                label: {
////            AboutUsRorView(name: "Settings", image: "settings")
////                .onTapGesture {
////                    withAnimation{
////                        vmmm.hideTab.toggle()
////                        self.showForth.toggle()
////                        NavigationLink(
////                            destination:  SettingsView(dismiss: $showForth),
////                            label: {
////                            })
////                    }
////                }
//            
//            NavigationLink(
//                destination:  SettingsView(dismiss: $showForth),
//                label: {
//            VStack {
//                Spacer()
//                    .frame(height:8)
//                
//            HStack {
//                
//                Image("settings")
//                    .padding(.trailing)
//                Text("Settings")
//                    .foregroundColor(.black)
//                
//                Spacer()
//                
//                Image(systemName: "chevron.forward")
//                    .foregroundColor(.gray)
//                
//            }
//            
//             
//                Divider()
//            }
//            .padding(.horizontal)
//            .background(Color.white)
//                })
//            AboutUsRorView(name: "Rate", image: "wishlist")
//            
//            AboutUsRorView(name: "About", image: "history")
//                .onTapGesture {
//                    withAnimation{
//                        self.showCongrate.toggle()
//                        vmmm.hideTab.toggle()
//                    }
//                }
//            
//            Spacer(minLength: 0)
//        }
//        
//            if showFirst {
//                WhieListView(dismiss: $showFirst)
//                    .transition(.move(edge: .bottom))
//            }
//            
//            if showSecond {
//                OrderHistoryView(dismiss: $showSecond)
//                    .transition(.move(edge: .bottom))
//            }
//            
//            if showThird {
//                NewsInfoView(dismiss: $showThird)
//                    .transition(.move(edge: .bottom))
//            }
//            
////            if showForth {
////                SettingsView(dismiss: $showForth)
////                    .transition(.move(edge: .bottom))
////            }
//            
//            if showCongrate {
//                VStack{
//                    
//                    Spacer()
//                    
//                    //                    AddMinusView(ca:$selected, show: $show )
//                    
//                    AboutCicrleRowView(show: $showCongrate,vm:vmmm)
//                    
//                    
//                    Spacer()
//                    
//                }
//                .background(
//                    
//                    Color.black.opacity(0.3).ignoresSafeArea()
//                        .opacity(showCongrate ? 1 : 0)
//                        
//                        .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
//                            withAnimation{showCongrate.toggle()
//                                vmmm.hideTab.toggle()
//                            }
//                        })
//                )
//                
//            }
//        
//        }
//        .background(Color("Color"))
//        .edgesIgnoringSafeArea(.all)
//        .statusBarStyle(.lightContent)
////        .onAppear {
////            self.statusBarStyle.currentStyle = .lightContent
////        }
////        .onDisappear {
////                             self.statusBarStyle.currentStyle = .lightContent
////                         }
//    }
//}
//
//struct AboutUsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AboutUsView()
//    }
//}
