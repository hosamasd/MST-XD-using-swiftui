//
//  TotoView.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct TotoView: View {
    
    var text:String
    @Binding var show:Bool
    @ObservedObject var vm = MainViewModel()
    var body: some View {
        VStack{
            
            HStack{
                
                Text("Total (Before Tax):")
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                
                Spacer()
                
                // calculating Total Price...
                Text(text)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.green)
            }
            .padding([.top,.horizontal])
            
            Button(action: {}) {
                
                Button(action: {
                    withAnimation{
                        show.toggle()
                        vm.hideTab.toggle()
//                        self.selection = "DISCOVER PRODUCT"
                        //                shoeSizeView = true
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.blue)
                            .frame( height: 50)
                            .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
                        //                        .padding()
                        Text("Buy")
                            .foregroundColor(.white)
                    }
                    //                .padding(.vertical)
                    .padding(.horizontal)
                })
                
             
            }
            
            Spacer()
                .frame(height:16)
        }
        .background(Color.white)
        .padding(.horizontal,16)
        .cornerRadius(8)
        .shadow(color: .gray, radius: 5, x: 2, y: 2)
    }
    
}

struct TotoView_Previews: PreviewProvider {
    static var previews: some View {
        HomeShopping()
    }
}
