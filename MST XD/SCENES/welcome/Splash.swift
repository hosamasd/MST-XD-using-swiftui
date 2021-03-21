//
//  Splash.swift
//  MST XD
//
//  Created by hosam on 3/20/21.
//

import SwiftUI

struct Splash: View {
    
    @State var multiColor = false
    @Binding var show:Bool
    var body: some View {
        
        VStack {
        VStack{
            Spacer()
            
            TextShimmer(text: "HOSAM", multiColors: true)
            
            TextShimmer(text: "MOHAMED", multiColors: false)
            
            TextShimmer(text: "iOS", multiColors: true)
            
            TextShimmer(text: "Developer!!", multiColors: false,fromRight: true)
            
            Spacer()
        }
        }
//        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        .onAppear {
                   // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                       // 7.
                       withAnimation {
                           self.show = true
                       }
                   }
               }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash( show: .constant(false))
    }
}
