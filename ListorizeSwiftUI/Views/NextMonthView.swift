//
//  NextMonthView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI

struct NextMonthView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("🔥 LISTORIZE 🔥 \n \n NEXT MONTH ").bold().kerning(2.5).multilineTextAlignment(.center)
                    .frame(width: 400, height: 80)
                    .font(.system(size: 20))
                    .foregroundColor(Color("ScreenTextColor"))
                    .background(Color("NextMonthColor"))
                    .cornerRadius(50)
                    .padding(.bottom, 700)
//            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(5.0), Color.clear]), startPoint: .top, endPoint: .bottom)
        
        
    }
    }
}

struct NextMonthView_Previews: PreviewProvider {
    static var previews: some View {
        NextMonthView()
    }
}
}
