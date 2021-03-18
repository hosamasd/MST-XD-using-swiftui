//
//  AboutUsView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct AboutUsView: View {
    
    @State var showFirst = false
    @State var showSecond = false
    @State var showThird = false
    @State var showForth = false
    @State var showCongrate:Bool = false
    @EnvironmentObject var vmmm:MainViewModel

    var body: some View {
        
        ZStack {
            
        
        VStack(spacing:0){
            
            VStack{
                
                HStack {
                    
                    
                    
                    Spacer()
                    
                    Text("More")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    
                    
                }
            }
            .padding()
            .padding(.top,top)
            .background(Color.blue)
            .padding(.bottom,16)
            
            
            AboutUsRorView(name: "Wishlist", image: "wishlist")
                .onTapGesture {
                    withAnimation{
                        self.showFirst.toggle()
                    }
                }
            
            AboutUsRorView(name: "Order History", image: "history")
                .onTapGesture {
                    withAnimation{
                        self.showSecond.toggle()
                    }
                }
            AboutUsRorView(name: "News Info", image: "news")
                .onTapGesture {
                    withAnimation{
                        self.showThird.toggle()
                    }
                }
            
            Spacer()
                .frame(height:60)
            
            AboutUsRorView(name: "Instructions", image: "instructions")
            
            AboutUsRorView(name: "Settings", image: "settings")
                .onTapGesture {
                    withAnimation{
                        self.showForth.toggle()
                    }
                }
            AboutUsRorView(name: "Rate", image: "wishlist")
            
            AboutUsRorView(name: "About", image: "history")
                .onTapGesture {
                    withAnimation{
                        self.showCongrate.toggle()
                        vmmm.hideTab.toggle()
                    }
                }
            
            Spacer(minLength: 0)
        }
        
            if showFirst {
                WhieListView(dismiss: $showFirst)
                    .transition(.move(edge: .bottom))
            }
            
            if showSecond {
                OrderHistoryView(dismiss: $showSecond)
                    .transition(.move(edge: .bottom))
            }
            
            if showThird {
                NewsInfoView(dismiss: $showThird)
                    .transition(.move(edge: .bottom))
            }
            
            if showForth {
                SettingsView(dismiss: $showForth)
                    .transition(.move(edge: .bottom))
            }
            
            if showCongrate {
                VStack{
                    
                    Spacer()
                    
                    //                    AddMinusView(ca:$selected, show: $show )
                    
                    AboutCicrleRowView(show: $showCongrate,vm:vmmm)
                    
                    
                    Spacer()
                    
                }
                .background(
                    
                    Color.black.opacity(0.3).ignoresSafeArea()
                        .opacity(showCongrate ? 1 : 0)
                        
                        .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                            withAnimation{showCongrate.toggle()
                                vmmm.hideTab.toggle()
                            }
                        })
                )
                
            }
        
        }
        .background(Color("Color"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
