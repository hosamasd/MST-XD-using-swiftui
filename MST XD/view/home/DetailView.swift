//
//  DetailView.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct DetailView: View {
    
    let de:Details
    var animation : Namespace.ID

    var body: some View {
        
        VStack {
            
            Image(de.pic)
                .matchedGeometryEffect(id: de.pic, in: animation)

            VStack(alignment:.leading ){
                
                Text(de.price)
                    .font(.title)
                    .foregroundColor(Color.green)
                    .matchedGeometryEffect(id: de.price, in: animation)

                Text(de.title)
                    .matchedGeometryEffect(id: de.title, in: animation)

            }
//            .padding(.horizontal)
        }
        .padding()
        .padding(.horizontal,-8)
        .background(Color.white)
        .cornerRadius(8)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(de: Details(title: "iPhone 8 Plus\n 64GB Gold", pic: "Mask Group 3", price: "579$"))
//    }
//}
