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
            
            Spacer()
                .frame(height:60)
            
            AboutUsRorView(name: "Instructions", image: "instructions")
            
            AboutUsRorView(name: "Settings", image: "settings")
            
            AboutUsRorView(name: "Rate", image: "wishlist")
            
            AboutUsRorView(name: "About", image: "history")
            
            
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
