//
//  TopView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct TopView: View {
    
    @State var index = 0
    
    var tops:[TopModel] = [
    
        .init(name: "First One", image: "Image 4", color: Color("Color-1")),
        .init(name: "Second  One", image: "Image 2", color: Color("t")),
        
    ]
    
    
    var body: some View {
        ZStack {
            
            tops[index].color
            
            VStack {
                
                Image(tops[index].image)
                    .resizable()
                    //                .aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width:UIScreen.main.bounds.width-148,height:160)
                    .offset(y:-0)
                
                Spacer()
                    .frame(height:60)
            }
            
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.6))
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                }
                .frame(width:30,height: 60)
                .onTapGesture(perform: {
                    withAnimation{
                        if self.index > 0{
                            
                            self.index = index - 1
                        }
                    }
                })
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.6))
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                }
                .frame(width:30,height: 60)
                .onTapGesture(perform: {
                    withAnimation{
                        if self.index < self.tops.count - 1{
                            
                            self.index = index + 1
                        }
                    }
                })
            }
            
            HStack {
                
                Text(tops[index].name)
                    .foregroundColor(.blue)
                
                Spacer()
                
                ForEach(0..<tops.count,id: \.self){i in
                    
                    Circle()
                        .fill(self.index == i ? Color.gray : Color.black.opacity(0.07))
                        .frame(width: 10, height: 10)
                }
            }
            .padding(.horizontal)
            .padding(.top)
            .padding(.bottom)
            .background(Color.white)
            .offset(y:130)
        }
//        .frame(height:200)
        .padding(.horizontal)
        .background(Color.white)
//        .cornerRadius(8)
    }
}
//
struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
