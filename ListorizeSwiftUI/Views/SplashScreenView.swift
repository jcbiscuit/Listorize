//
//  SplashScreenView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 19/2/21.
//

import SwiftUI
import Combine

//struct SplashScreenView: View {
//
//    @State var animate = false
//    @State var endSplash = false
//
//    var body: some View {
//        ZStack {
//            ZStack {
//                Color("SplashScreen")
//
//                Image("ListorizeSplash2")
//                    .resizable()
//                    .renderingMode(.original)
//                    .aspectRatio(contentMode: animate ? .fill : .fit)
//                    .frame(width: animate ? nil : 45, height: animate ? nil : 45)
//
//                    .scaleEffect(animate ? 3 : 1)
//                    .frame(width: UIScreen.main.bounds.width)
//            }
//
//            .ignoresSafeArea(.all, edges: .all)
//            .onAppear(perform: animateSplash)
//            .opacity(endSplash ? 0 : 1)
//                }
//            }
//
//    func animateSplash() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
//            withAnimation(Animation.easeOut(duration: 0.45)) {
//                animate.toggle()
//            }
//            withAnimation(Animation.linear(duration: 0.35)) {
//                endSplash.toggle()
//            }
//        }
//    }
//
//        }


struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
