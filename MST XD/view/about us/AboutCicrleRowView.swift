//
//  AboutCicrleRowView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct AboutCicrleRowView: View {
    @Binding var show:Bool
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
            
            
            
            
            
            VStack {
                VStack(spacing:16) {
                    
                    Spacer()
                        .frame(height:20)
                    
                    Text("About")
                        .font(.title)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .lineSpacing(5)
                        .padding(.bottom)
                        .padding(.horizontal,20)
                    
                    Divider()
                    
                    Button(action: {
                        withAnimation{show.toggle()}
                    }, label: {
                        Text("OK")
                    })
                }
                .padding(.vertical,20)
                //                .padding(.horizontal,)
                .background(Color.white)
                .cornerRadius(8)
                
                
            }
            .padding(.vertical,20)
            .padding(.horizontal,40)
            .background(Color.clear)
            .cornerRadius(8)
            
            
            Image("Group 92")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 150)
                //                .font(.system(size: 50))
                .offset(y:-60)
            
        })
        
        
        
        
        
        
        
    }
}

struct AboutCicrleRowView_Previews: PreviewProvider {
    static var previews: some View {
        AboutCicrleRowView(show: .constant(false))
    }
}
