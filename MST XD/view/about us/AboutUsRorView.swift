//
//  AboutUsRorView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct AboutUsRorView: View {
    
    let name,image:String
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height:8)
            
        HStack {
            
            Image(image)
                .padding(.trailing)
            Text(name)
            
            Spacer()
            
            Image(systemName: "chevron.forward")
                .foregroundColor(.gray)
            
        }
        
         
            Divider()
        }
        .padding(.horizontal)
        .background(Color.white)
    }
}

//struct SecondAboutUsRorView < Content>: View where  Content: View {
//    
//    let name,image:String
//    let content: () -> Content
//    @Binding var showForth:Bool
//    
//    var body: some View {
//       
//        VStack {
//            Spacer()
//                .frame(height:8)
//            
//            NavigationLink(
//                destination:  Content,
//                label: {
//        HStack {
//            
//            Image(image)
//                .padding(.trailing)
//            Text(name)
//            
//            Spacer()
//            
//            Image(systemName: "chevron.forward")
//                .foregroundColor(.gray)
//            
//        }
//        
//                })
//         
//            Divider()
//        }
//        .padding(.horizontal)
//        .background(Color.white)
//            
//    }
//}

struct AboutUsRorView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsRorView(name: "about us", image: "about us")
    }
}
