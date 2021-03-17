//
//  HomeShopping.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct HomeShopping: View {
    
    @State var carts:[ShopItem] = [
    
        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: "559$", count: 2),

            .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: "559$", count: 1)
        ,
            .init(title: "Nike Sportswear T-Shirt", pic: "Mask Group 3", price: "69$", count: 1),

            .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: "559$", count: 4),

            .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: "559$", count: 5)
    ]
    
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)

    
    
    var body: some View {
        
        VStack{
            
            VStack{
            
            HStack {
                
              
                
                Spacer()
                
                Text("Shopping Cart")
                    .font(.title2)
                    .foregroundColor(.white)
                
                Spacer()
                
                if carts.count > 0 {
                    
                Image(systemName: "trash")
                    .foregroundColor(.white)
                
                }
            }
            }
            .padding()
            .padding(.top,top)
            .background(Color.blue)
            
            if carts.isEmpty {
                
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
                    
                    ForEach(carts){gradient in
                        
                        ShopCartRow(ca:gradient)
                            
//                            .shadow(color: .gray, radius: 5, x: 2, y: 2)
                    }
                }
//                .padding(.horizontal)
                .padding(.bottom)
            }
            .background(Color.white)
            .padding(.horizontal,16)
            .padding(.top)
            .cornerRadius(8)
            .shadow(color: .gray, radius: 5, x: 2, y: 2)
            
            TotoView()
                .padding(.bottom,20)
                .padding(.top)
            
            
            Spacer()
        }
            
        }
//        .padding(.horizontal)
        
        .background(Color("Color"))
        .edgesIgnoringSafeArea(.all)
        
//        EpmtyShopView()
    }
}

struct HomeShopping_Previews: PreviewProvider {
    static var previews: some View {
        HomeShopping()
    }
}
