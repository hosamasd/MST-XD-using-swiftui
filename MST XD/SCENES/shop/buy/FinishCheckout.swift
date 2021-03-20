//
//  FinishCheckout.swift
//  MST XD
//
//  Created by hosam on 3/17/21.
//

import SwiftUI

struct FinishCheckout: View {
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    @State private var selectedDate = Date()
    @Binding var show:Bool
    @State var name:String = ""
    @State var showCongrate:Bool = false
    //    @EnvironmentObject var vmmm:MainViewModel
    @Environment(\.localStatusBarStyle) var statusBarStyle
    @Environment(\.presentationMode) var presentationMode
    @StateObject var vm = FinishViewModel()
    @State private var birthDate = Date()
    @State var xxx = false
    var body: some View {
        
        ZStack {
            
            VStack{
                
                VStack{
                    
                    HStack {
                        
                        Button(action: {withAnimation{
                            presentationMode.wrappedValue.dismiss()
                            //                            show.toggle()
                            //                            vmmm.hideTab.toggle()
                            print(123)
                        }}, label: {
                            
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                        })
                        
                        Spacer()
                        
                        Text("Shopping Carts")
                            .font(.title2)
                            .foregroundColor(.white)
                            .onTapGesture {
                                print(123)
                            }
                        
                        Spacer()
                        
                        
                        
                        
                    }
                }
                .padding()
                .padding(.top,top)
                .background(Color.blue)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Spacer()
                        .frame(height:16)
                    
                    HStack {
                        Text("BUYER PROFILE")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    VStack() {
                        VStack(spacing:0) {
                            FloatingTextField(title: "name", text: $vm.name)
                            Divider()
                                .background(!vm.checkName(email: vm.name) ? Color.red : .blue)
                                
                                .padding(.bottom,16)
                            
                            FloatingTextField(title: "Email", text: $vm.email)
                            Divider()
                                .background(!vm.checkEmail(email: vm.email) ? Color.red : .blue)
                                .padding(.bottom,16)
                            
                            
                            FloatingTextField(title: "Phone", text: $vm.phone)
                            Divider()
                                .background(!vm.phone.isValidPhoneNumber ? Color.red : .blue)
                                .padding(.bottom,16)
                            FloatingTextField(title: "Address", text: $vm.address)
                            Divider()
                                .background(!vm.checkName(email: vm.address) ? Color.red : .blue)
                                .padding(.bottom,16)
                            
                        }
                        
                        
                        HStack {
                            Text( "\(birthDate, formatter: dateFormatter)")
                                .foregroundColor(.gray)
                            Spacer()
                            Image("date & time")
                                .onTapGesture(perform: {
                                    withAnimation{self.xxx.toggle()}
                                })
                        }
                        
                        if xxx {
                            VStack {
                                DatePicker("Enter your birthday", selection: $birthDate)
                                    .datePickerStyle(GraphicalDatePickerStyle())
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        
                        Divider()
                            .background( Color.blue)
                            .padding(.bottom,16)
                        
                        FloatingTextField(title: "Comment", text: $vm.comment)
                        Divider()
                            .background(!vm.checkName(email: vm.comment) ? Color.red : .blue)
                            .padding(.bottom,16)
                    }
                    .padding(.horizontal)
                    
                }
                //            .background(Color.white)
                .padding(.horizontal,16)
                .padding(.top)
                .padding(.bottom)
                .cornerRadius(8)
                //            .shadow(color: .gray, radius: 5, x: 2, y: 2)
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        
                        self.showCongrate.toggle()
                        //                    self.selection = "DISCOVER PRODUCT"
                        //                shoeSizeView = true
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.blue)
                            .frame( height: 50)
                            .shadow(color: Color.orange.opacity(0.2), radius: 10, y: 15)
                        //                        .padding()
                        Text("Process Chechout")
                            .foregroundColor(.white)
                    }
                    //                .padding(.vertical)
                    .padding(.horizontal)
                })
                .padding(.top)
                .padding(.bottom,bottom)
            }
            .background(Color("Color"))
            
            if showCongrate {
                VStack{
                    
                    Spacer()
                    
                    //                    AddMinusView(ca:$selected, show: $show )
                    
                    BuySuccessView(show: $showCongrate)
                    
                    
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
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        .animation(.default)
        .onAppear {
            self.statusBarStyle.currentStyle = .lightContent
        }
        //        .sheet(isPresented: $xxx, content: {
        //            DatePicker(selection: $selectedDate, in: Date()..., displayedComponents: .date) {
        //                           Text("")
        //            }
        //        })
        //        .popover(isPresented: $xxx, content: {
        //
        //        })
        
    }
}

struct FinishCheckout_Previews: PreviewProvider {
    static var previews: some View {
        FinishCheckout(show: .constant(false))
    }
}
