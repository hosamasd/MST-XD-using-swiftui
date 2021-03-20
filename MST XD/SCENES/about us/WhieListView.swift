//
//  WhieListView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct WhieListView: View {
    
    @StateObject var vm = CartViewModel()
    @Binding var dismiss:Bool
    
    
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)
    
    @State var selected = ShopItem(title: "iPhone 8 Plus 64GB Gold", pic: "Mask Group 3", price: 55.09, count: 2)
    @State var show = false
    @Environment(\.localStatusBarStyle) var statusBarStyle
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
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
                    
                    Text("Wishlist")
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
                    
                    Spacer()
                        .frame(height:16)
                    
                    LazyVGrid(columns: columns,spacing: 20){
                        
                        // assigning name as ID...
                        
                        ForEach(vm.carts){gradient in
                            
                            ShopCartRow(ca:$vm.carts[getIndex(item: gradient)])
                            
                            
                            //                            .shadow(color: .gray, radius: 5, x: 2, y: 2)
                        }
                    }
                    //                .padding(.horizontal)
                    .padding(.bottom)
                }
                .background(Color.white)
                .padding(.horizontal,16)
                .padding(.top)
                .cornerRadius(8)
                .padding(.bottom)
//                .shadow(color: .gray, radius: 5, x: 2, y: 2)
                
                
//                }
                
//                Spacer(minLength: 0)
            }
            
        }
        .background(Color("Color"))
        .edgesIgnoringSafeArea(.all)
        .statusBarStyle(.lightContent)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
//        .onAppear {
//            self.statusBarStyle.currentStyle = .lightContent
//        }
    }
    
    func getIndex(item: ShopItem)->Int{
        
        return vm.carts.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
}
