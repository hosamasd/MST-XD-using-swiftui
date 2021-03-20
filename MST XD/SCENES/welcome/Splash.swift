//
//  Splash.swift
//  MST XD
//
//  Created by hosam on 3/20/21.
//

import SwiftUI

struct Splash: View {
    
    @State var multiColor = false

    var body: some View {
        
        VStack {
        VStack{
            Spacer()
            
            TextShimmer(text: "HOSAM", multiColors: true)
            
            TextShimmer(text: "MOHAMED", multiColors: false)
            
            TextShimmer(text: "iOS", multiColors: true,fromRight:true)
            
            TextShimmer(text: "Developer!!", multiColors: false,fromRight:true)
            
            Spacer()
        }
        }
//        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
