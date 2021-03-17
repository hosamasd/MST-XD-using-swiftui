//
//  CategoryView.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct CategoryView: View {
    let cat:Category
    
    var body: some View {
        
        HStack {
            
            Image(cat.pic)
                .aspectRatio(contentMode: .fit)
                .padding(.vertical,30)
                .padding(.horizontal,30)
                .background(cat.color)
            
            VStack(alignment:.leading,spacing:8) {
                
                Text(cat.title)
                    .font(.title2)
                
                Text(cat.detail)
                    .foregroundColor(Color.black.opacity(0.6))
                    .font(.system(size: 12))
                    .lineLimit(2)
                
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

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(cat:  Category(title: "WELCOME", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "mobile",color:Color("f")))
    }
}
