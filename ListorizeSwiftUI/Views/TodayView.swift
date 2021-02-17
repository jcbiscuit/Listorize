//
//  TodayView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI

struct TodayView: View {
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("🔥 LISTORIZE 🔥 \n \n TODAY ").bold().kerning(2.5).multilineTextAlignment(.center)
                    .frame(width: 400, height: 80)
                    .font(.system(size: 20))
                    .foregroundColor(Color("TextColor"))
                    .background(Color("TodayColor"))
                    .cornerRadius(50)
                    .padding(.bottom, 700)
                
                
//            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(5.0), Color.clear]), startPoint: .bottom, endPoint: .top)
        
    }
}
}
struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
        TodayView()
            .preferredColorScheme(.light)
    }
}
}
