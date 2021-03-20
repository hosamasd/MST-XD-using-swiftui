//
//  CartViewModel.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

class CartViewModel: ObservableObject {
    @Published var carts:[ShopItem] = [
        
//        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.5, count: 2),
//        
//        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 1)
//        ,
//        .init(title: "Nike Sportswear T-Shirt", pic: "Mask Group 3", price: 69.5, count: 1),
//        
//        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 4),
//        
//        .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 5)
    ]
    
    func getData()  {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3.0) {
            self.carts =
            
                [
                   
                   .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.5, count: 2),
                   
                   .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 1)
                   ,
                   .init(title: "Nike Sportswear T-Shirt", pic: "Mask Group 3", price: 69.5, count: 1),
                   
                   .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 4),
                   
                   .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.9, count: 5)
               ]
        }
    }
}
