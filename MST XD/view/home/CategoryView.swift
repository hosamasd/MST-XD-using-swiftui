//
//  CategoryView.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct CategoryView: View {
    let cat:Category
    var animation : Namespace.ID
    
    
    var body: some View {
        
        HStack {
            
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(cat.color)
                    .frame(width:120)
                Image(cat.pic)
                    .matchedGeometryEffect(id: cat.pic, in: animation)
            }
            //            Image(cat.pic)
            //                .aspectRatio(contentMode: .fit)
            //                .padding(.vertical,30)
            //                .padding(.horizontal,30)
            //                .background(cat.color)
            //                .matchedGeometryEffect(id: cat.pic, in: animation)
            
            VStack(alignment:.leading,spacing:8) {
                
                Text(cat.title)
                    .font(.title2)
                    .matchedGeometryEffect(id: cat.title, in: animation)
                Text(cat.detail)
                    .foregroundColor(Color.black.opacity(0.6))
                    .font(.system(size: 12))
                    .lineLimit(2)
                    .matchedGeometryEffect(id: cat.detail, in: animation)
            }
            .padding()
            
            Spacer()
        }
        .background(Color.white)
        .cornerRadius(8)
        //        .shadow(color: .gray, radius: 2, x: 5, y: 5)
        
        //        .frame(height:100)
        //        .padding(.vertical,8)
    }
}


