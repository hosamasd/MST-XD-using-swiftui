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
        
        Category(title: "DISCOVER PRODUCT", detail: "Search  Lastest and Featured Product with Best Price.s.", pic: "sports",color:Color("s")),
        
        Category(title: "ADD TO CART", detail: "Search  Lastest and Featured Product with Best Price..", pic: "serving-dish",color:Color("t")),
        
        
    ]
    @State var show = false
    @State var selected = Category(title: "WELCOME        ", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "mobile",color:Color("f"))
    @State var txt = ""
    @Namespace var name
    @Environment(\.localStatusBarStyle) var statusBarStyle
    
    var body: some View {
        
        ZStack {
            
            ScrollView (showsIndicators:false) {
                
                
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
                        .cornerRadius(10)
                        .padding(.trailing)
                        
                        
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
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Spacer()
                    })
                    .padding(.horizontal)
                    .padding(.vertical)
                    
                    TopView()
                        .padding(.bottom,40)
                    
                    
                    HStack( content: {
                        
                        Text("Categories")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Spacer()
                    })
                    .padding(.horizontal)
                    .padding(.vertical)
                    .padding(.top)
                    
                    ForEach(onBoard) {dd in
                        
                        //                NavigationLink(
                        //                    destination:  HomeDetail(cat: dd, show: $show, animation: name),
                        //                    label: {
                        //                        CategoryView(cat: dd, animation: name)
                        //                    })
                        CategoryView(cat: dd, animation: name)
                            .onTapGesture(perform: {
                                withAnimation{
                                    self.selected=dd
                                    self.show.toggle()
                                }
                            })
                    }
                    .padding(.vertical,0)
                    .padding(.horizontal,16)
                    
                    //            Spacer()
                    
                }
            }
            .padding(.top,60)
            
            if show {
                HomeDetail(cat: selected, show: $show, animation: name)
                //                    .transition(.move(edge: .bottom))
            }
            
        }
        .padding(.bottom)
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        .onAppear {
            if show {
                self.statusBarStyle.currentStyle = .lightContent
            }else {
                self.statusBarStyle.currentStyle = .darkContent
            }
        }  
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
