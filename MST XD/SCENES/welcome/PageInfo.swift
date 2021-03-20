////
////  PageInfo.swift
////  MST XD
////
////  Created by hosam on 3/17/21.
////
//
//import SwiftUI
//
//struct PageInfo: View {
//    @AppStorage ("state") var ss = false
//    
//    @State var onBoard = [
//        
//        Board(title: "WELCOME", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "intro_img_1"),
//        
//        Board(title: "DISCOVER PRODUCT", detail: "Search  Lastest and Featured Product with Best Price.s.", pic: "intro_img_2"),
//        
//        Board(title: "ADD TO CART", detail: "Search  Lastest and Featured Product with Best Price..", pic: "intro_img_3"),
//        Board(title: "VERIFY AND RECEIVE", detail: "We Will Verify Your Order Pay the Bill and Receive the Product..", pic: "intro_img_4"),
//        
//    ]
//    var colors:[Color] = [.red,.blue,.green,.orange]
//    @State var offset:CGFloat = 0
//    @State var index = 0
//    @State  var selection = "WELCOME"
//    @Environment(\.localStatusBarStyle) var statusBarStyle
//    @Binding var show:Bool
//    
//    var body: some View {
//        //for fix ignoresSafeArea tabview
//        ScrollView(.init()){
//            
//            
//            
//            
//            
//            TabView(selection: $selection){
//                ForEach(onBoard) {dd in
//                    
//                    //                ForEach(colors.indices,id:\.self) {index in
//                    if dd.title=="WELCOME"{
//                        VStack{
//                            
//                            Image(dd.pic)
//                                .resizable()
//                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
//                            
//                            
//                            
//                            Text(dd.title)
//                                .font(.title)
//                                .fontWeight(.bold)
//                                .foregroundColor(.black)
//                                .padding(.top, 35)
//                            
//                            Text(dd.detail)
//                                .font(.title2)
//                                .foregroundColor(.gray)
//                                .padding(.top)
//                                .padding(.horizontal, 20)
//                                .multilineTextAlignment(.center)
//                            
//                            Spacer(minLength: 0)
//                            
//                        }
//                        .tag("WELCOME")
//                        
//                        .overlay(
//                            
//                            
//                            //                        if index==0{
//                            GeometryReader{proxy ->Color in
//                                let minX = proxy.frame(in:.global).minX
//                                
//                                DispatchQueue.main.async {
//                                    withAnimation(.default){
//                                        self.offset = -minX
//                                    }
//                                }
//                                return Color.clear
//                            }
//                            .frame(width: 0, height: 0)
//                            ,alignment:.leading
//                            
//                        )
//                    }else {
//                        VStack{
//                            
//                            Image(dd.pic)
//                                .resizable()
//                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
//                            
//                            
//                            
//                            Text(dd.title)
//                                .font(.title)
//                                .fontWeight(.bold)
//                                .foregroundColor(.black)
//                                .padding(.top, 35)
//                            
//                            Text(dd.detail)
//                                .foregroundColor(.black)
//                                .padding(.top)
//                                .padding(.horizontal, 20)
//                            
//                            
//                            //                            Spacer(minLength: 0)
//                            
//                            if dd.title == "VERIFY AND RECEIVE"{
//                                
//                                VStack {
//                                    Spacer()
//                                        .frame(height:40)
//                               
//                                Button(action: {
//                                    withAnimation{
//                                        self.selection = "DISCOVER PRODUCT"
//                                        //                shoeSizeView = true
//                                    }
//                                }, label: {
//                                    ZStack {
//                                        RoundedRectangle(cornerRadius: 12)
//                                            .fill( Color.blue)
//                                            .frame( height: 50)
//                                            .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
//                                        //                        .padding()
//                                        Text("Next")
//                                            .foregroundColor(.white)
//                                    }
//                                    //                .padding(.vertical)
//                                    .padding(.horizontal)
//                                })
//                                }
////                                Button(action: {
////
////                                    // Updating index...
////                                    withAnimation{
////                                        self.ss=true
////                                    }
////
////                                }) {
////
////                                    //                                if self.index /†/== self.onBoard.count - 1{
////
////                                    HStack(spacing: 30){
////
////                                        Text(self.index == self.onBoard.count - 1 ? "" : "Login" )
////                                            .foregroundColor(.white)
////                                            .fontWeight(.bold)
////
////                                    }
////                                    .padding(.vertical)
////                                    .frame(width: UIScreen.main.bounds.width - 200)
////                                    .background(Color.red)
////                                    .clipShape(Capsule())
////                                    .padding(.bottom, 20)
//                                    
//                                    //                                }/
////                                }
//                            }else {
//                                Spacer(minLength: 0)
//                            }
//                            
//                        }
//                        .tag(dd.title)
//                    }
//                    //                    }
//                    //                    }
//                }
//                //                }
//            }
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            .overlay(
//                
//                //animated indicators
//                HStack(spacing:15) {
//                    ForEach(colors.indices,id:\.self) {index in
//                        
//                        Capsule()
//                            .fill(Color.gray)
//                            .frame(width: getIndex() == index ? 20 : 7, height: 7)
//                        
//                    }
//                    
//                }
//                //smooth slide effects
//                .overlay(
//                    Capsule()
//                        .fill(Color.red)
//                        .frame(width:  20 , height: 7)
//                        .offset(x:getOffsets())
//                    ,alignment:.leading)
//                
//                .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
//                .padding(.bottom)
//                ,alignment: .bottom)
//            
//            Button(action: {
//                withAnimation{
//                    self.selection = "DISCOVER PRODUCT"
//                    //                shoeSizeView = true
//                }
//            }, label: {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 12)
//                        .fill( Color.blue)
//                        .frame( height: 50)
//                        .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
//                    //                        .padding()
//                    Text("Next")
//                        .foregroundColor(.white)
//                }
//                //                .padding(.vertical)
//                .padding(.horizontal)
//            })
//            
//            Button(action: {
//                withAnimation{
//                    self.selection = "VERIFY AND RECEIVE"
//                    //                shoeSizeView = true
//                }
//            }, label: {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 12)
//                        .fill(Color.clear)
//                        .frame( height: 50)
//                        .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
//
//                    Text("Skip")
//                        .foregroundColor(.black)
//                }
//                .padding(.horizontal)
//
//            })
//            .padding()
//            
//        }
//        .ignoresSafeArea()
////        .background(Color.clear.edgesIgnoringSafeArea(.all))
//        .onAppear {
//            self.statusBarStyle.currentStyle = .darkContent
//        }
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//    }
//    
//    //getindex
//    func getIndex() -> Int {
//        let index = Int(round(Double(offset / getWidth())))
//        
//        return index
//    }
//    
//    //get offset for capsule shape
//    func getOffsets() -> CGFloat {
//        //spacing:15
//        //circle width:7
//        let progress = offset / getWidth()
//        
//        return progress * 22
//    }
//}
//
//struct PageInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//extension View {
//    func getWidth() -> CGFloat {
//        return UIScreen.main.bounds.width
//    }
//    
//    
//}
