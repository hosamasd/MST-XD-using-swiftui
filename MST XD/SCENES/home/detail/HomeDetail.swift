//
//  HomeDetail.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

var top = UIApplication.shared.windows.first?.safeAreaInsets.top
var bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom

struct HomeDetail: View {
    
    let cat : Category
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 2)
    @State var onBoard = [
        
        Details(title: "iPhone 8 Plus\n 64GB Gold", pic: "Mask Group 3_2", price: "579$"),
        
        Details(title: "iPhone 11 Pro Max \n 64GB GreenGrays", pic: "Image 2", price: "859$"),
        
        Details(title: "iPhone 11 Pro Max \n 128GB GreenGrays", pic: "Mask Group 3" ,price: "559$"),
        Details(title: "iPhone 11 Pro Max \n 64GB GreenGray",  pic: "Image 2_2", price: "359$"),
        
    ]
    @State var selected = Details(title: "iPhone 8 Plus\n 64GB Gold", pic: "Mask Group 3", price: "579$")
    //    @Environment(\.presentationMode) var presentationMode
    @Binding var show:Bool
    var animation : Namespace.ID
    @Environment(\.localStatusBarStyle) var statusBarStyle
//    @Namespace var name
    @Namespace var name
    @State var sho=false

    var body: some View {
        
        ZStack {
        VStack {
            
            //top view
            VStack {
                
                HStack {
                    
                    Button(action: {withAnimation{show.toggle()}}, label: {
                        
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                    
                    
                }
                .padding(.top,top)
                
                HStack {
                    
                    Image(cat.pic)
                        .aspectRatio(contentMode: .fit)
                        .matchedGeometryEffect(id: cat.pic, in: animation)
                    VStack(alignment:.leading,spacing:8) {
                        
                        Text(cat.title)
                            .font(.title2)
                            .foregroundColor(.white)
                            .matchedGeometryEffect(id: cat.title, in: animation)
                        Text(cat.detail)
                            
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                            .lineLimit(2)
                            .matchedGeometryEffect(id: cat.detail, in: animation)
                    }
                    .padding()
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top,-8)
                .background(cat.color)
                
                
            }
            .padding(.top)
            .padding(.horizontal)
            .padding(.bottom)
            .background(cat.color)
            
            Spacer()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                LazyVGrid(columns: columns,spacing: 20){
                    
                    // assigning name as ID...
                    
                    ForEach(onBoard){gradient in
//                        NavigationLink(
//                            destination: ProductDetail(cat: gradient,animation: name),
//                            label: {
                                DetailView(de: gradient, animation: name)
                                    .onTapGesture(perform: {
                                        withAnimation{
                                            self.selected=gradient
                                            self.sho.toggle()
                                        }
                                    })
//                            })
                       
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
            
            Spacer()
        }
        
            if sho {
                ProductDetail(cat: selected, show:$sho,animation: name)
            }
        }
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .background(Color("Color"))
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.statusBarStyle.currentStyle = .lightContent
        }  
        
    }
}

//struct HomeDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeDetail(cat: Category(title: "WELCOME", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "mobile",color:Color("f")))
//    }
//}
