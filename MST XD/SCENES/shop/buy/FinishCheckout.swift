//
//  FinishCheckout.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct FinishCheckout: View {
    @Binding var show:Bool
    @Binding var name:String
    
    var body: some View {
        VStack{
            
            VStack{
                
                HStack {
                    
                    Button(action: {withAnimation{show.toggle()}}, label: {
                        
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
                    Text("BUYER PROFILE")
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.horizontal)
                
                VStack(spacing:16) {
                    FloatingTextField(title: "name", text: $name)
                    
                    
                    FloatingTextField(title: "Email", text: $name)
                    
                    FloatingTextField(title: "Phone", text: $name)
                    
                    FloatingTextField(title: "Address", text: $name)
                    
                    FloatingTextField(title: "Comment", text: $name)
                }
                .padding(.horizontal)
                
            }
//            .background(Color.white)
            .padding(.horizontal,16)
            .padding(.top)
            .padding(.bottom)
            .cornerRadius(8)
//            .shadow(color: .gray, radius: 5, x: 2, y: 2)
            
            Spacer()
            
            Button(action: {
                withAnimation{
                    //                    self.selection = "DISCOVER PRODUCT"
                    //                shoeSizeView = true
                }
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.blue)
                        .frame( height: 50)
                        .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
                    //                        .padding()
                    Text("Process Chechout")
                        .foregroundColor(.white)
                }
                //                .padding(.vertical)
                .padding(.horizontal)
            })
            .padding(.top)
            .padding(.bottom,bottom)
        }
        .background(Color("Color"))
        
        
        .edgesIgnoringSafeArea(.all)
        .animation(.default)
    }
}

struct FinishCheckout_Previews: PreviewProvider {
    static var previews: some View {
        FinishCheckout(show: .constant(false), name: .constant("name"))
    }
}
