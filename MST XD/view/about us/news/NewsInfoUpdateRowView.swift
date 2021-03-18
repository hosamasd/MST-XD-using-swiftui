//
//  NewsInfoUpdateRowView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct NewsInfoUpdateRowView: View {
    let ca: NewsInfoModel
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
            
            Text(ca.detail)
                .foregroundColor(.gray)
                .padding(.top,8)
                .padding(.horizontal)
            
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
                    Text("Open")
                        .foregroundColor(.blue)
                })
                
                Spacer()
                
            }
            .padding()
            
        }
        .background(Color.white)
        .cornerRadius(16)
        .frame(height:120)
        .padding(.vertical)
        .padding(.horizontal,32)
    }
}

struct NewsInfoUpdateRowView_Previews: PreviewProvider {
    static var previews: some View {
        NewsInfoUpdateRowView(ca:  .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2021 05:30",pic:"Mask Group 3"), show: .constant(false))
    }
}
