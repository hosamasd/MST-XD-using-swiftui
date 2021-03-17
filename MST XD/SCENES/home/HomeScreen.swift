//
//  HomeScreen.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var text = ""
    @State var onBoard = [
        
        Category(title: "WELCOME        ", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "mobile",color:Color("f")),
        
        Category(title: "DISCOVER PRODUCT", detail: "Search  Lastest and Featured Product with Best Price.s.", pic: "mobile",color:Color("s")),
        
        Category(title: "ADD TO CART", detail: "Search  Lastest and Featured Product with Best Price..", pic: "mobile",color:Color("t")),
       
        
    ]
    @State var show = false
    @State var selected = Category(title: "WELCOME        ", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "mobile",color:Color("f"))
    
    var body: some View {
        
        ZStack {
        VStack {
            
            HStack{
                
                ZStack {
                RoundedRectangle(cornerRadius: 8)
                    
                    .fill(Color.white)
                    .frame(height:64)
                
                    
                    TextField("Search",text:$text)
                        .font(.title)
                        .padding(.horizontal)
                }
                .background(Color.white)
                .shadow(color: .gray, radius: 2, x: 1, y: 1)
//                .shadow(color: .gray, radius: 1, x: 2, y: 2)
                .padding(.trailing)
//                Spacer()
           
                
            Button(action: {}, label: {
                
                ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 64, height: 64)
                 
                    Image(systemName: "magnifyingglass")
                        
                        .resizable()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.white)
                }
                
            })
                
                
                
            }
            .padding(.horizontal)
            
            HStack( content: {
               
                Text("What's New?")
                    .font(.title)
                    .foregroundColor(.black)
                Spacer()
            })
            .padding(.horizontal)
            .padding(.vertical)
            
            HStack( content: {
               
                Text("Categories")
                    .font(.title)
                    .foregroundColor(.black)
                Spacer()
            })
            .padding(.horizontal)
            .padding(.vertical)
            
            ForEach(onBoard) {dd in
                
                CategoryView(cat: dd)
                    .onTapGesture(perform: {
                        withAnimation{
                            self.selected=dd
                            self.show.toggle()
                        }
                    })
            }
            .padding(.vertical,0)
            .padding(.horizontal,16)
            
            Spacer()
            
        }
        
            if show {
                HomeDetail(cat: selected, show: $show)
                    .transition(.move(edge: .bottom))
            }
            
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
