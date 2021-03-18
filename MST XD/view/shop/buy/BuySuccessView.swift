//
//  BuySuccessView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct BuySuccessView: View {
    
    @Binding var show:Bool
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
            
            
            
            
            
            VStack {
                VStack(spacing:16) {
                    
                    Spacer()
                        .frame(height:20)
                    
                    Text("Congratulations")
                        .font(.title)
                    
                    Text("Successfully checkout order.\n Your ordr Code is : AX6175KC5")
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    
                    Text("Your order will be reviewed soon,\n when your order is ready, invoice detail will be sent to \nyour Email.")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                        .padding(.horizontal,20)
                    
                    Divider()
                    
                    Button(action: {
                        withAnimation{show.toggle()}
                    }, label: {
                        Text("OK")
                    })
                }
                .padding(.vertical,20)
                //                .padding(.horizontal,)
                .background(Color.white)
                .cornerRadius(8)
                
                
            }
            .padding(.vertical,20)
            .padding(.horizontal,40)
            .background(Color.clear)
            .cornerRadius(8)
            
            
            Image("Group 93")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 150)
                //                .font(.system(size: 50))
                .offset(y:-60)
            
        })
        
        
        
        
        
        
        
    }
}

struct BuySuccessView_Previews: PreviewProvider {
    static var previews: some View {
        BuySuccessView(show: .constant(false))
    }
}
