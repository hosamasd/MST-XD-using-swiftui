//
//  HomeDetail.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

var top = UIApplication.shared.windows.first?.safeAreaInsets.top

struct HomeDetail: View {
    
    let cat : Category
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 2)
    @State var onBoard = [
        
        Details(title: "iPhone 8 Plus\n 64GB Gold", pic: "Mask Group 3", price: "579$"),
        
        Details(title: "iPhone 11 Pro Max \n 64GB GreenGray", pic: "Image 2", price: "859$"),
        
        Details(title: "iPhone 11 Pro Max \n 128GB GreenGray", pic: "Mask Group 3" ,price: "559$"),
        Details(title: "iPhone 11 Pro Max \n 64GB GreenGray",  pic: "Image 2", price: "359$"),
        
    ]
//    @Environment(\.presentationMode) var presentationMode
    @Binding var show:Bool
    
    var body: some View {
        
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
                    
                    VStack(alignment:.leading,spacing:8) {
                        
                        Text(cat.title)
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        Text(cat.detail)
                            
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                            .lineLimit(2)
                        
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
                        
                        DetailView(de: gradient)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
            
            Spacer()
        }
        .background(Color("Color"))
        .edgesIgnoringSafeArea(.all)
        .onAppear(
        
        )
        
    }
}

//struct HomeDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeDetail(cat: Category(title: "WELCOME", detail: "MEST EC is Premium Online Shopping Platform for Everyone..", pic: "mobile",color:Color("f")))
//    }
//}
