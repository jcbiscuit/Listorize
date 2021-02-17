//
//  NextYearView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI

struct NextYearView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("🔥 LISTORIZE 🔥 \n \n NEXT YEAR ").bold().kerning(2.5).multilineTextAlignment(.center)
                    .frame(width: 400, height: 80)
                    .font(.system(size: 20))
                    .foregroundColor(Color("TextColor"))
                    .background(Color("NextYearColor"))
                    .cornerRadius(50)
                    .padding(.bottom, 700)
//            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(5.0), Color.clear]), startPoint: .top, endPoint: .bottom)
        
        
    }
    }
}

struct NextYearView_Previews: PreviewProvider {
    static var previews: some View {
        NextYearView()
    }
}
}
