//
//  ShopItem.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct ShopItem: Identifiable {
    var id = UUID().uuidString
    
    var title : String
    var pic : String
    var price:Float
    var count:Int
    
}
