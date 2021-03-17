//
//  AddMinusView.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct AddMinusView: View {
    
    @Binding var ca:ShopItem
    @Binding var show:Bool
    
    var body: some View {
        
        
        VStack {
            
            HStack {
                
                Image("number")
                
                Text("QUANTITY")
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("Stock:90")
                    .foregroundColor(.gray)
                
            }
            .padding()
            
            HStack {
                
                Button(action: {
                    
                    if ca.count > 1{ca.count -= 1}
                }) {
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                            .frame(width: 32, height: 32)
                        
                        Text("-")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                }
                
                Spacer()
                
                Text("\(ca.count)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                Button(action: {
                    
                    self.ca.count = self.ca.count+1
                }) {
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                            .frame(width: 32, height: 32)
                        
                        Text("+")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                }
                
            }
            
            .padding(.horizontal)
            .padding(.vertical)
            
            .background(Color.gray)
            .cornerRadius(8)
            .padding(.horizontal)
            
            Divider()
            
            HStack() {
                
                Spacer()
                
                Button(action: {
                    withAnimation{show.toggle()}
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.blue)
                })
                
                Spacer()
                Divider()
                    .frame(width:1)
                
                Spacer()
                
                Button(action: {
                    withAnimation{show.toggle()}
                }, label: {
                    Text("OK")
                        .foregroundColor(.blue)
                })
                
                Spacer()
                
            }
            .padding()
            
        }
        
        .background(Color.white)
        .cornerRadius(8)
        .frame(height:120)
        .padding(.horizontal)
        
    }
}

struct AddMinusView_Previews: PreviewProvider {
    static var previews: some View {
        HomeShopping()
        //        AddMinusView(ca: .init(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: "559$", count: 2))
    }
}

func getPrice(value: Float)->String{
    
    let format = NumberFormatter()
//    format.locale = Locale(identifier: "es_CL")
    format.usesGroupingSeparator = true
    format.numberStyle = .currency
    format.locale = Locale.current
    return format.string(from: NSNumber(value: value)) ?? ""
}
