//
//  NotificationRowView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct NotificationRowView: View {
    let ca: NotyModel

    var body: some View {
        VStack(alignment:.leading,spacing:8) {
            
            Text(ca.title)
                .font(.title3)
            
            Text(ca.detail)
                .font(.body)
                .foregroundColor(.gray)
            
            HStack{
                
                Image("date & time")
                
                Text(ca.date)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Text("hour ago.")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal,8)
    }
}

struct NotificationRowView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationRowView(ca:  .init(title: "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2019 05:30"))
    }
}
