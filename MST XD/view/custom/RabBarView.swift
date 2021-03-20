//
//  RabBarView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct RabBarView: View {
    var tabs = ["Home","Cart","Notifications","More"]

    var sss = ["house","cart","scalemass","ellipsis"]
  
    
    @EnvironmentObject var vm:MainViewModel
    @Binding var selected : String

    var body: some View {
        
        VStack(spacing:8) {
//            Divider()
////                .frame(height:4)
//                .background(Color.gray)
//                .shadow(color: .red, radius: 10, x: 10, y: 10)
        HStack{
            
            ForEach(tabs,id: \.self){i in
                
                   
                    Button(action: {
                        
                        self.selected = i
                        
                    }) {
                        
                        VStack{
                            
                            Image(systemName:sss[getName(x:i)])
                                .foregroundColor(selected==i ? .blue : .gray)
                            Text(i)
                                .foregroundColor(selected==i ? .blue : .gray)
                        }
                    }
                    
                if i != tabs.last { Spacer(minLength: 0)   }
                    
//                }
                
                
                
//                }
            }
            
            
            
        }
        .padding(.horizontal,32)
           
        }
        .background(Color.clear)
//        .shadow(color: .gray, radius: 10, x: 10, y: 1)
        
//        .environmentObject(vm)
    }
    
    func getName(x:String) -> Int {
        return x == "Home" ? 0 : x == "Cart" ? 1 : x=="Notifications" ? 2 : 3
    }
}

struct RabBarView_Previews: PreviewProvider {
    static var previews: some View {
//        MainView()
        RabBarView( selected: .constant("Home"))
    }
}
