//
//  SettingsView.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

struct SettingsView: View {
    @Binding var dismiss:Bool
@State var showNotification = false
    @State var showVibrate = false

    var body: some View {
        
        ZStack {
            
//            Group {
        VStack(spacing:0){
            
            VStack{
                
                HStack {
                    
                    Button(action: {withAnimation{dismiss.toggle()}}, label: {
                        
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                    })
                    
                    
                    Spacer()
                    
                    Text("Settings")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    
                    
                }
            }
            .padding()
            .padding(.top,top)
            .background(Color.blue)
            .padding(.bottom,16)
            
            HStack{
                Text("NOTIFICATIONS")
                
                Spacer(minLength: 0)
            }
            .padding()
            
            VStack {
            
            SettingsRowView(name: "Push Notifications", rightName: "?", show: $showNotification)
            
            SettingsRowView(name: "Vibrate", rightName: "?", show: $showVibrate)
            
            SettingsRowView(name: "Ringtone", rightName: "Deneb", show: $showNotification)
            
            HStack{
                Text("OTHERS")
                
                Spacer(minLength: 0)
            }
            .padding()
            
            SettingsRowView(name: "Contact us", rightName: "DevDream.space@gmail.com", show: $showNotification)
            
            SettingsRowView(name: "Copyrights", rightName: "All copyright reserved to Dream Space.", show: $showNotification)
            
            SettingsRowView(name: "Build Version", rightName: "Version 1.1", show: $showNotification)
            
            SettingsRowView(name: "Terms & Policies", rightName: "",noValue: true, show: $showNotification)
            
            }
                
                Spacer()
        }
        .background(Color("Color"))
        
        }
        .background(Color("Color"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(dismiss: .constant(false))
    }
}
