//
//  HomeShopping.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct HomeShopping: View {
    
    @StateObject var vm = CartViewModel()

    
    
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)
    
    @State var selected = ShopItem(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.09, count: 2)
    @State var show = false
    @State var totalPrice = ""
    
    @EnvironmentObject var vmmm:MainViewModel
    @State var showDetail:Bool = false

    var body: some View {
        
        ZStack {
            
            
            VStack{
                
                VStack{
                    
                    HStack {
                        
                        
                        
                        Spacer()
                        
                        Text("Shopping Cart")
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        if vm.carts.count > 0 {
                            
                            Image(systemName: "trash")
                                .foregroundColor(.white)
                            
                        }
                    }
                }
                .padding()
                .padding(.top,top)
                .background(Color.blue)
                
                if vm.carts.isEmpty {
                    
                    VStack {
                        Spacer()
                        EpmtyShopView()
                        
                        Spacer()
                    }
                    
                }
                else {
                    
                    
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        Spacer()
                            .frame(height:16)
                        
                        LazyVGrid(columns: columns,spacing: 20){
                            
                            // assigning name as ID...
                            
                            ForEach(vm.carts){gradient in
                                
                                ShopCartRow(ca:$vm.carts[getIndex(item: gradient)])
                                    .onTapGesture(perform: {
                                        withAnimation{
                                            self.selected = gradient
                                            show.toggle()
                                            vmmm.makeBlue.toggle()
                                        }
                                    })
                                
                                //                            .shadow(color: .gray, radius: 5, x: 2, y: 2)
                            }
                        }
                        //                .padding(.horizontal)
                        .padding(.bottom)
                    }
//                    .background(Color.white)
                    .padding(.horizontal,16)
                    .padding(.top)
                    .cornerRadius(8)
//                    .shadow(color: .gray, radius: 5, x: 2, y: 2)
                    
                    TotoView(text:calculateTotalPrice(), show: $showDetail,vm: vmmm)
                        .padding(.bottom,20)
                        .padding(.top)
                    
                    
                    Spacer()
                }
                
            }
            //        .padding(.horizontal)
            
            .background(Color("Color"))
            //        .edgesIgnoringSafeArea(.all)
            
            if show {
                VStack{
                    
                    Spacer()
                    
//                    AddMinusView(ca:$selected, show: $show )
                    
                    AddMinusView(ca:$vm.carts[getIndex(item: selected)], show: $show ,vm: vmmm)
                    
                    
                    Spacer()
                    
                }
                .background(
                    
                    Color.black.opacity(0.3).edgesIgnoringSafeArea(.all)
                        .opacity(show ? 1 : 0)
                        
                        .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                            withAnimation{show.toggle()
                                vmmm.makeBlue.toggle()
                            }
                        })
                )
                
            }
            
            if showDetail {
                CheckoutBuy(show: $showDetail)
                    .transition(.move(edge: .bottom))
            }
            
        }
        .padding(.bottom)
        .edgesIgnoringSafeArea(.all)
        .animation(.default)
       
    }
    
    func calculateTotalPrice() ->String{
        
        var price : Float = 0
        
        vm.carts.forEach { (item) in
            price += Float(item.count) * item.price
        }
        
        return   getPrice(value: price)
    }
    
    func getIndex(item: ShopItem)->Int{
        
        return vm.carts.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
}

struct HomeShopping_Previews: PreviewProvider {
    static var previews: some View {
        HomeShopping()
    }
}
