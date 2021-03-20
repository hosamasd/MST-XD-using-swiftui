//
//  CheckoutBuy.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct CheckoutBuy: View {
    
    @Binding var show:Bool
    @State var items:[ShopItem] = [
        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.5, count: 2),
        
        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 1),
        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.5, count: 2),
        
        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 1)
    ]
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)
    @State var showDetail:Bool = false
    @EnvironmentObject var vmmm:MainViewModel
    @Environment(\.localStatusBarStyle) var statusBarStyle
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        ZStack {
            
            VStack{
                
                VStack{
                    
                    HStack {
                        
                        Button(action: {withAnimation{
                            presentationMode.wrappedValue.dismiss()

//                            show.toggle()
//                            vmmm.hideTab.toggle()
                        }}, label: {
                            
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                        })
                        
                        Spacer()
                        
                        Text("Shopping Cart")
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        
                        
                        
                    }
                }
                .padding()
                .padding(.top,top)
                .background(Color.blue)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Spacer()
                        .frame(height:16)
                    
                    HStack {
                        Text("PRODUCT ORDER LIST")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    //            ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVGrid(columns: columns,spacing: 0){
                        
                        // assigning name as ID...
                        
                        ForEach(items){gradient in
                            
                            ShopCartRow(ca:$items[getIndex(item: gradient)])
                        }
                    }
                }
//                .background(Color.white)
                .padding(.horizontal,16)
                .padding(.top)
                .padding(.bottom)
                .cornerRadius(8)
//                .shadow(color: .gray, radius: 5, x: 2, y: 2)
                //                .padding(.horizontal)
                //                .padding(.bottom)
                //            }
                //            .background(Color.white)
                //            .padding(.horizontal,16)
                //            .padding(.top)
                //            .padding(.bottom)
                //            .cornerRadius(8)
                //            .shadow(color: .gray, radius: 5, x: 2, y: 2)
                
                
                
                //cost details
                
                VStack (){
                    HStack {
                        Text("COST DETAILS")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.vertical)
                    .padding(.horizontal)
                    
                    HStack{
                        Text("Total order")
                        
                        Spacer()
                        
                        Text("23$")
                            .foregroundColor(.green)
                    }
                    .padding(.horizontal)
                    Divider()
                        .padding(.horizontal)
                    HStack{
                        Text("Tax 5%")
                        
                        Spacer()
                        
                        Text("1.5$")
                            .foregroundColor(.green)
                    }
                    .padding(.horizontal)
                    Divider()
                        .padding(.horizontal)
                    HStack{
                        Text("Total Fees")
                        
                        Spacer()
                        
                        Text("24.15$")
                            .foregroundColor(.green)
                    }
                    .padding(.horizontal)
                    Divider()
                        .padding(.horizontal)
                }
                .background(Color.white)
                //            .cornerRadius(8)
                .padding(.horizontal,16)
                .cornerRadius(8)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)
                
                
                
                Spacer(minLength: 0)
                
                
                        
                        Button(action: {
                           print("1111")
//                            withAnimation{
//                                showDetail.toggle()
//                                //                    self.selection = "DISCOVER PRODUCT"
//                                //                shoeSizeView = true
//                            }
                        }, label: {
                            NavigationLink(
                                destination: FinishCheckout(show: $showDetail),
                                label: {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.blue)
                                            .frame( height: 50)
                                            .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
                                        //                        .padding()
                                        Text("Next")
                                            .foregroundColor(.white)
                                    }
                                    //                .padding(.vertical)
                                    .padding(.horizontal)
                                })
                           
                        })
                        .padding(.top)
                        .padding(.bottom,bottom)
                    
                
//                Button(action: {
//                    withAnimation{
//                        showDetail.toggle()
//                        //                    self.selection = "DISCOVER PRODUCT"
//                        //                shoeSizeView = true
//                    }
//                }, label: {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 12)
//                            .fill(Color.blue)
//                            .frame( height: 50)
//                            .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
//                        //                        .padding()
//                        Text("Next")
//                            .foregroundColor(.white)
//                    }
//                    //                .padding(.vertical)
//                    .padding(.horizontal)
//                })
//                .padding(.top)
//                .padding(.bottom,bottom)
                
                
            }
            .background(Color("Color"))
            
            if showDetail {
                FinishCheckout(show: $showDetail)
                    .transition(.move(edge: .bottom))
            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        .animation(.default)
        .onAppear {
            self.statusBarStyle.currentStyle = .lightContent
        } 
    }
    
    func getIndex(item: ShopItem)->Int{
        
        return items.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
}

