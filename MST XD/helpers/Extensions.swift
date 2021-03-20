//
//  Extensions.swift
//  Chattos
//
//  Created by hosam on 12/17/20.
//

import SwiftUI

extension String {
    

    
    
    var isValidEmail: Bool {
        return NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }

    var isValidPhoneNumber: Bool {
        let phoneNumberRegex = "^[0-0]\\d{10}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
        let isValidPhone = phoneTest.evaluate(with: self)
        return self == "" ? true : isValidPhone
    }
}
