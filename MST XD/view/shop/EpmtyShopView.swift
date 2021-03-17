//
//  EpmtyShopView.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct EpmtyShopView: View {
    var body: some View {
        
        VStack(alignment:.center) {
            
            Image("img_no_item")
            
            Text("No Item Yet!")
        }
//        .background(Color.red)
        
        
    }
}

struct EpmtyShopView_Previews: PreviewProvider {
    static var previews: some View {
        EpmtyShopView()
    }
}
