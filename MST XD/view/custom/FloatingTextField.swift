//
//  FloatingTextField.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct FloatingTextField: View {
    let title: String
    let text: Binding<String>

    var body: some View {
        
        VStack {
       
        ZStack(alignment: .leading) {
              Text(title)
                  .foregroundColor(text.wrappedValue.isEmpty ? Color(.placeholderText) : .accentColor)
                  .offset(y: text.wrappedValue.isEmpty ? 0 : -25)
                  .scaleEffect(text.wrappedValue.isEmpty ? 1 : 0.75, anchor: .leading)
              TextField("", text: text)
          }
          .padding(.top, 15)
          .animation(.spring(response: 0.4, dampingFraction: 0.3))
         
            Divider()
        }
    }
}


struct FinishCheckosut_Previews: PreviewProvider {
    static var previews: some View {
        FloatingTextField(title: "hosam", text: .constant("ss"))
    }
}
