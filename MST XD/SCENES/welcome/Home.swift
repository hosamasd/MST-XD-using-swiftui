//
//  Home.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct Home: View {
    
    @State var filters:[Filter] = [
        Filter(title:"English",checked:false, image: "united-kingdom"),
        Filter(title:"العربية",checked:false, image: "saudi-arabia"),
        Filter(title:"Francais",checked:false, image: "france"),
        
    ]
    @Environment(\.localStatusBarStyle) var statusBarStyle
    @State var show = false
    @Binding var showss:Bool
    var body: some View {
        VStack() {
            
            
            Image("translator")
                .resizable()
                .font(.system(size: 10))
                .aspectRatio(contentMode: .fill)
                .padding(.bottom,20)
                .frame(width: 120, height: 120, alignment: .center)
                .padding(.top,(UIScreen.main.bounds.height/5) - 60)
                .padding(.bottom,40)
            
            HStack {
                Spacer()
                Text(".اختر لغتك المفضلة")
                    .font(.title3)
                    .padding()
            }
            
            Text("Choose your prefferd Language.")
                .font(.system(size: 26))
                .padding(.vertical)
            
            Divider()
            
            ForEach(filters) {filter in
                LanguageRowView(filter: filter, shows: $showss)
//                    .onTapGesture(perform: {
//                        show.toggle()
//                    })
//                })
             
            }
            .padding(.top)
            Spacer()
        }
        .padding(.horizontal,16)
        
        .background(Color.clear.edgesIgnoringSafeArea(.all))
        .onAppear {
            self.statusBarStyle.currentStyle = .darkContent
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
////                if show {
//                self.show.toggle()
////                }
//            }
        }
//        .onAppear {
//                           DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//                               self.show.toggle()
//                           }
//        }
    }
}

//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}
