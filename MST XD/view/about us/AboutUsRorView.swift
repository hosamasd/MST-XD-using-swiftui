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

struct AboutUsRorView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsRorView(name: "about us", image: "about us")
    }
}
