//
//  NewsInfoView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct NewsInfoView: View {
    @StateObject var vm = NewsViewModel()
    @Binding var dismiss:Bool
    @Environment(\.presentationMode) var presentationMode

    
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)
    
    @State var selected =  NewsInfoModel(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  15, 2021 05:30",pic:"Image 4")
    @State var show = false
    @State var showCongrate:Bool = false
    @Environment(\.localStatusBarStyle) var statusBarStyle

    var body: some View {
        
        ZStack {
        
            VStack{
            
            VStack{
                
                HStack {
                    
                    Button(action: {withAnimation{
                            presentationMode.wrappedValue.dismiss()
                            dismiss.toggle()}}, label: {
                        
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                    Text("News Info")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                }
            }
            .padding()
            .padding(.top,top)
            .background(Color.blue)
            
            if vm.carts.isEmpty {
                
                VStack {
                    Spacer()
                    EpmtyShopView()
                    
                    Spacer()
                }
                
            }
            else {
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                  
                    
                    LazyVGrid(columns: columns,spacing: 0){
                        
                        // assigning name as ID...
                        
                        ForEach(vm.carts){gradient in
                            
                            
                            NewRowView(ca: gradient)
                                .onTapGesture(perform: {
                                    withAnimation{
                                        self.selected=gradient
                                        self.showCongrate.toggle()
                                    }
                                })
                            //                            .shadow(color: .gray, radius: 5, x: 2, y: 2)
                        }
                    }
                    //                .padding(.horizontal)
                    .padding(.bottom)
                }
//                .background(Color.white)
                .padding(.horizontal,16)
                .padding(.top)
                .cornerRadius(8)
                .padding(.bottom)
                
                
            }
                
            }
            .background(Color("Color"))
                
                if showCongrate {
                    VStack{
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            NewsInfoUpdateRowView(ca: selected, show: $showCongrate)
                            
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
        .statusBarStyle(.lightContent)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
//        .onAppear {
//            self.statusBarStyle.currentStyle = .lightContent
//        }
//        }
    }
}

struct NewsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        NewsInfoView( dismiss: .constant(false))
    }
}
