//
//  NotificationView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct NotificationView: View {
    
    @State var showCongrate:Bool = false
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)
@StateObject var vm = NotificationViewModel()
    @State var selected = NotyModel(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2019 05:30")
    
    var body: some View {
        ZStack {
            
        VStack{
            
            VStack{
                
                HStack {
                    
                   
                    
                    Spacer()
                    
                    Text("Notifications")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                        
                      
                        
                }
            }
            .padding()
            .padding(.top,top)
            .background(Color.blue)
            
            ScrollView(.vertical, showsIndicators: false) {
                
              
//            ScrollView(.vertical, showsIndicators: false) {
                
                LazyVGrid(columns: columns,spacing: 0){
                    
                    // assigning name as ID...
                    
                    ForEach(vm.notifications){gradient in
                        
                        NotificationRowView(ca: gradient)
                            .onTapGesture(perform: {
                                withAnimation{
                                    self.selected=gradient
                                    self.showCongrate.toggle()
                                }
                            })
//                       . ShopCartRow(ca:$items[getIndex(item: gradient)])
                    }
                    .padding()
                }
            }
                .background(Color.white)
                .padding(.horizontal,16)
                .padding(.top)
                .padding(.bottom)
                .cornerRadius(8)
//                .shadow(color: .gray, radius: 5, x: 2, y: 2)
            
            Spacer()
        }
            
        .background(Color("Color"))
            
            if showCongrate {
                VStack{
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                    NotificationUpdateRowView(ca: selected, show: $showCongrate)
                        .frame(width:UIScreen.main.bounds.width-64)
                        Spacer()
                    }
                    
                    //                    AddMinusView(ca:$selected, show: $show )
                    
//                    BuySuccessView(show: $showCongrate)
                    
                    
                    Spacer()
                    
                }
                .background(
                    
                    Color.black.opacity(0.3).ignoresSafeArea()
                        .opacity(showCongrate ? 1 : 0)
                        
                        .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                            withAnimation{showCongrate.toggle()}
                        })
                )
                
            }
        
    }
        .edgesIgnoringSafeArea(.all)
        .animation(.default)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
