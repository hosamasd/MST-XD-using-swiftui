//
//  NotificationUpdateRowView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct NotificationUpdateRowView: View {
    
    let ca: NotyModel
    @Binding var show:Bool

    var body: some View {
       
        VStack {
            
            Image("Mask Group 4")
            
            HStack {
            VStack(alignment:.leading,spacing:8){
                
                Text(ca.shows)
                
                Text("Update Market Place")
                    .font(.title2)
                
                Text("Sofa Bed Guci Dark Brown")
            }
            .padding(.horizontal)
                
                Spacer()
            }
//            .padding(.horizontal,-30)
            
//            .frame(width:UIScreen.main.bounds.width-64)
            
            Divider()
            
            HStack() {
                
                Spacer()
                
                Button(action: {
                    withAnimation{show.toggle()}
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.blue)
                })
                
                Spacer()
                Divider()
                    .frame(width:1)
                
                Spacer()
                
                Button(action: {
                    withAnimation{show.toggle()}
                }, label: {
                    Text("OK")
                        .foregroundColor(.blue)
                })
                
                Spacer()
                
            }
            .padding()
            
        }
        .background(Color.white)
        .cornerRadius(8)
        .frame(height:120)
        .padding(.vertical)
        .padding(.horizontal,32)
    }
}

struct NotificationUpdateRowView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
