//
//  ProductDetail.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct ProductDetail: View {
    
    let cat : Details
    @Binding var show:Bool
    var height = UIScreen.main.bounds.height < 750
    @Environment(\.presentationMode) var presentationMode
//    @Namespace var animation

    var animation : Namespace.ID

    var body: some View {
        
        
        VStack(alignment:.leading) {
            
            
            
            VStack{
                
                HStack {
                    
                    Button(action: {withAnimation{
//                            presentationMode.wrappedValue.dismiss()
                            show.toggle()
                        
                    }
                        
                    }, label: {
                        
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                    
//                    Image(systemName: "magnifyingglass")
//                        .foregroundColor(.white)
                    
                    
                }
            }
            .padding()
            .padding(.top,top)
            .background(Color.blue)
            
            //            Spacer()
            
            ScrollView(height ? .vertical : .init() ){
                
                HStack {
                    Spacer()
                    
                    Image(cat.pic)
                        .padding(.top)
                        .matchedGeometryEffect(id: cat.pic, in: animation)

                    Spacer()
                    
                }
                .padding(.top)
                
                VStack(alignment: .leading, spacing: 16, content: {
                    
                    Text(cat.price)
                        .font(.title)
                        .foregroundColor(Color.green)
                        .matchedGeometryEffect(id: cat.price, in: animation)
                    Text(cat.title)
                        .matchedGeometryEffect(id: cat.title, in: animation)
                    Text("January  2, 2019 05:30")
                        .foregroundColor(Color.gray)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                        .lineSpacing(12.0)
                        .padding(.vertical,10)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book..")
                        .lineSpacing(12.0)
                    //                    .lineLimit(2)
                    
                    
                    
                })
                .padding(.horizontal)
                
                Spacer()
                
            }
            
            Button(action: {
                withAnimation{
                    //                        self.selection = "DISCOVER PRODUCT"
                    //                shoeSizeView = true
                }
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.blue)
                        .frame( height: 50)
                        .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
                    //                        .padding()
                    Text("Add To Cart")
                        .foregroundColor(.white)
                }
                //                .padding(.vertical)
                .padding(.horizontal)
            })
//            .padding(.bottom,60)
            
//            Spacer()
        }
        
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
    }
}

//struct ProductDetail_Previews: PreviewProvider {
//    @Namespace var name
//
//
//    static var previews: some View {
//
//        ProductDetail(cat:         Details(title: "iPhone 8 Plus\n 64GB Gold", pic: "Mask Group 3", price: "579$"), show: .constant(false), animation: name)
//        )
//    }
//}
