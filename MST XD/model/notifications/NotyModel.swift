//
//  NotyModel.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct NotyModel:Identifiable {
    var id = UUID().uuidString
    
    var title,detail : String
    var date,shows:String
    
}

struct NewsInfoModel:Identifiable {
    var id = UUID().uuidString
    
    var title,detail : String
    var date,shows,pic:String
    
}
