//
//  ShopCartRow.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct ShopCartRow: View {
    
    let ca:ShopItem 
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image(ca.pic)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:UIScreen.main.bounds.width/5)
                
                Spacer()
                
                VStack(alignment:.leading) {
                    
                    Text(ca.title)
                        .font(.title2)
                    
                    HStack{
                        
                        Image(systemName: "tray")
                        
                        Text("\(ca.count) item\(checkS())")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text(ca.price)
                            .foregroundColor(.green)
                        
                        Spacer()
                        
                    }
                }
                
                
            }
            
            
            Divider()
        }
        .padding(.horizontal)
       
//        .shadow(color: .gray, radius: 5, x: 2, y: 2)
    }
    
    func checkS() -> String {
        ca.count > 1 ? "s" : ""
    }
}

struct ShopCartRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopCartRow(ca: .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: "559$", count: 2))
    }
}
