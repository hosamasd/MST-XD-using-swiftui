//
//  FinishViewModel.swift
//  MST XD
//
//  Created by hosam on 3/20/21.
//

import SwiftUI

class FinishViewModel: ObservableObject {
    @Published var email = ""
    @Published var name = ""
    @Published var phone = ""
    @Published var address = ""
    @Published var comment = ""
    @Published var selectDate = ""
    
    func checkEmail(email:String) -> Bool {
        return email == "" ? true :   email.isValidEmail ? true : false
    }
    
    func checkName(email:String) -> Bool {
        return email == "" ? true :   email.count >= 3 ? true : false
    }
    
    
    
   
    
}
