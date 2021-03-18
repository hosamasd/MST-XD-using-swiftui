//
//  NewRowView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct NewRowView: View {
    
    let ca: NewsInfoModel
    
    var body: some View {
        VStack {
            
            HStack {
                
                Image(ca.pic)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:UIScreen.main.bounds.width/5)
                
                Spacer()
                
                VStack(alignment:.leading) {
                    
                    Text(ca.title)
                        .font(.title3)
                        .lineLimit(2)
                        .padding(.bottom,8)
                    
                    Text(ca.detail)
                        .foregroundColor(.gray)
                        .lineLimit(1)
                    
                    HStack{
                        
                        Image( "date & time")
                        
                        Text(ca.shows)
                            .foregroundColor(.gray)
                        
                        
                        
                        Spacer()
                        
                    }
                    .padding(.top,-4)
                }
                
                
            }
            
            
            Divider()
        }
        .padding(.horizontal)
    }
}

struct NewRowView_Previews: PreviewProvider {
    static var previews: some View {
        NewRowView(ca: NewsInfoModel(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2019 05:30",pic:"Mask Group 3"))
    }
}
