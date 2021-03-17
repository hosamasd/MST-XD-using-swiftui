//
//  Category.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct Category: Identifiable {
    var id = UUID().uuidString
    
    var title : String
    var detail : String
    var pic : String
    var color:Color
}
