//
//  LanguageRowView.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct LanguageRowView: View {
    
    @State var filter:Filter
    @State var show = false
    @Binding var shows:Bool
    var body: some View {
        
        VStack{
        
        HStack {
            
            Image( filter.image)
                .padding(.horizontal)
            
            Text(filter.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.black.opacity(0.7))
            
            Spacer()
            
            NavigationLink(destination: SecondPageInfo( show: $shows), isActive: $show, label: {

            
            ZStack {
                
                Circle()
                    .stroke(filter.checked ? Color.blue :  Color.gray,lineWidth: 1)
                    .frame(width: 25, height: 25)
                
                if filter.checked {
                    
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.green)
                    
                }
            }
            })
        }
        .padding(.horizontal,6)
        .onTapGesture(perform: {
            filter.checked.toggle()
        })
            
            Divider()
        }
        .padding(.horizontal)
        .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
                        if filter.checked {
                            show.toggle()
                        }
                    }
                }
    }
}

struct LanguageRowView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageRowView(filter: Filter(title: "english", checked: false, image: "person"), shows: .constant(false))
    }
}
