//
//  HistoryRowView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct HistoryRowView: View {
    let ca:NotyModel
    
    var body: some View {
        VStack(alignment:.leading,spacing:8) {
            
            Text(ca.title)
            
            HStack{
                
                Text(ca.detail)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(ca.date)
                    .foregroundColor(.green)
            }
            
            Divider()
            
        }
        .padding()
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(ca: NotyModel(title: "AX61754KX", detail: "55$", date: "1 hour ago.", shows: ""))
    }
}
