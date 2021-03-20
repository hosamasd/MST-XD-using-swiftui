//
//  MakeToastSWIFTUI.swift
//  MST XD
//
//  Created by hosam on 3/20/21.
//

import SwiftUI

struct Toast<Presenting>: View where Presenting: View {
        /// The binding that decides the appropriate drawing in the body.
        @Binding var isShowing: Bool
        /// The view that will be "presenting" this toast
        let presenting: () -> Presenting
        /// The text to show
        let text: Text

        var body: some View {

            GeometryReader { geometry in

                ZStack(alignment: .center) {

                    self.presenting()
                        .blur(radius: self.isShowing ? 1 : 0)

                    VStack {
                        self.text
                    }
                    .frame(width: geometry.size.width / 2,
                           height: geometry.size.height / 5)
                    .background(Color.secondary.colorInvert())
                    .foregroundColor(Color.primary)
                    .cornerRadius(20)
                    .transition(.slide)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                          withAnimation {
//                            self.opacity(0)
                            self.isShowing = false
                          }
                        }
                    }
                    .opacity(self.isShowing ? 1 : 0)

                }

            }

        }

    
}

extension View {

    func toast(isShowing: Binding<Bool>, text: Text) -> some View {
        Toast(isShowing: isShowing,
              presenting: { self },
              text: text)
    }
    
    func toasts<Content>(isPresented: Binding<Bool>, content: @escaping () -> Content) -> some View where Content: View {
           Toasts(
               isPresented: isPresented,
               presenter: { self },
               content: content
           )
       }

}

struct Toasts<Presenting, Content>: View where Presenting: View, Content: View {
    @Binding var isPresented: Bool
    let presenter: () -> Presenting
    let content: () -> Content
    let delay: TimeInterval = 2
@State var xx = false
    var body: some View {
        if self.isPresented {
            DispatchQueue.main.async {
                xx=isPresented
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + self.delay) {
                withAnimation {
//                    xx=false
                    self.isPresented = false
                }
            }
        }

        return GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                self.presenter()

                ZStack {
                    Capsule()
                        .fill(Color.gray)

                    self.content()
                } //ZStack (inner)
                .frame(width: geometry.size.width / 1.25, height: geometry.size.height / 10)
                .opacity(self.isPresented ? 1 : 0)
//                .opacity(self.xx ? 1 : 0)
            } //ZStack (outer)
            .padding(.bottom)
        } //GeometryReader
    } //body
} //Toast


//
//struct MakeToastSWIFTUI_Previews: PreviewProvider {
//    static var previews: some View {
//        MakeToastSWIFTUI()
//    }
//}
