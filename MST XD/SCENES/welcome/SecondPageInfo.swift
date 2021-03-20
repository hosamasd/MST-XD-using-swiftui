//
//  SecondPageInfo.swift
//  MST XD
//
//  Created by hosam on 3/20/21.
//

import SwiftUI

struct SecondPageInfo: View {
    
    @AppStorage ("state") var ss = false
    
    @State var onBoard = [
        
        Board(title: "WELCOME", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "intro_img_1"),
        
        Board(title: "DISCOVER PRODUCT", detail: "Search  Lastest and Featured Product with Best Price.s.", pic: "intro_img_2"),
        
        Board(title: "ADD TO CART", detail: "Search  Lastest and Featured Product with Best Price..", pic: "intro_img_3"),
        Board(title: "VERIFY AND RECEIVE", detail: "We Will Verify Your Order Pay the Bill and Receive the Product..", pic: "intro_img_4"),
        
    ]
    var colors:[Color] = [.red,.blue,.green,.orange]
    @State var offset:CGFloat = 0
    @State var index = 0
    @State  var selection = "WELCOME"
    @Environment(\.localStatusBarStyle) var statusBarStyle
    @Binding var show:Bool

    
    var body: some View {
        VStack{
            
            Image(self.onBoard[self.index].pic)
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            
            // Pages...
            
            HStack(spacing: 12){
                
                ForEach(0..<self.onBoard.count,id: \.self){i in
                    
                    ZStack {
                        
                        Circle()
                            .stroke(Color.gray,lineWidth: 2)
                            .frame(width: 30, height: 30)
                        
                        Circle()
                            .fill(self.index == i ? Color.blue : Color.clear)
                            .frame(width: 15, height: 15)
                        
                    }
                    
//                    Circle()
//                        .fill(self.index == i ? Color.gray : Color.black.opacity(0.07))
//                        .frame(width: 10, height: 10)
                }
            }
            .padding(.top,30)
            
            Text(self.onBoard[self.index].title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.top, 35)
            
            Text(self.onBoard[self.index].detail)
                .foregroundColor(.black)
                .padding(.top)
                .padding(.horizontal, 20)
            
            Spacer(minLength: 0)
            
            Button(action: {
                withAnimation{
                    if index < onBoard.count-1 {
                    self.index = index+1
                    }
                    else {
                        show.toggle()
                    }
//                    self.selection = "DISCOVER PRODUCT"
                    //                shoeSizeView = true
                }
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill( Color.blue)
                        .frame( height: 50)
                        .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
                    //                        .padding()
                    Text("Next")
                        .foregroundColor(.white)
                }
                //                .padding(.vertical)
                .padding(.horizontal)
            })
            
            Button(action: {
                withAnimation{
                    show.toggle()
//                    self.selection = "VERIFY AND RECEIVE"
                    //                shoeSizeView = true
                }
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.clear)
                        .frame( height: 50)
                        .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
                    
                    Text("Skip")
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                
            })
            .padding()
            
            
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct SecondPageInfo_Previews: PreviewProvider {
    static var previews: some View {
        SecondPageInfo( show: .constant(false))
    }
}
