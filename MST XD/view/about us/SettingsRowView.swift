//
//  SettingsRowView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct SettingsRowView: View {
    let name:String
    var rightName = ""
    var noValue = false
    
    @Binding var show:Bool
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height:8)
            
            HStack {
                
               
                Text(name)
                
                Spacer()
                
                if noValue {
                    Spacer()
                }else
                
                if rightName == "" {
                    Image(systemName: "chevron.forward")
                        .foregroundColor(.gray)
                }else
                
                if rightName == "?" {
                    Toggle("", isOn: $show)
                }
                
                else {
                    Text(rightName)
                        .font(.system(size: 14))
                }
                
                
            }
            
            
            Divider()
        }
        .padding(.horizontal)
        .background(Color.white)
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "about us", rightName: "?", show: .constant(true))
    }
}
