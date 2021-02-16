//
//  ContentView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.97, green: 0.95, blue: 0.89)
                .edgesIgnoringSafeArea(.all)
        VStack {
            
            Text("🔥 Listorize 🔥")
                .bold()
                .font(.system(size: 40))
                .frame(width: 400, height: 150)
                .foregroundColor(.black)
                .background(Color(red: 1.00, green: 0.92, blue: 0.65))
                .cornerRadius(50)
                .padding(.bottom, 50)
            
            
            Button(action: {}) {
                Text("Today")
                    .bold()
                    .frame(width: 400, height: 70)
                    .foregroundColor(.black)
                    .background(Color(red: 0.64, green: 0.61, blue: 1.00))
                    .cornerRadius(50)
                    .padding()
            }
            Button(action: {}) {
                Text("Tomorrow")
                    .bold()
                    .frame(width: 400, height: 70)
                    .foregroundColor(.black)
                    .background(Color(red: 0.45, green: 0.73, blue: 1.00))
                    .cornerRadius(50)
                    .padding()
            }
            Button(action: {}) {
                Text("Next Week")
                    .bold()
                    .frame(width: 400, height: 70)
                    .foregroundColor(.black)
                    .background(Color(red: 0.51, green: 0.93, blue: 0.93))
                    .cornerRadius(50)
                    .padding()
            }
                Button(action: {}) {
                    Text("Next Month")
                        .bold()
                        .frame(width: 400, height: 70)
                        .foregroundColor(.black)
                        .background(Color(red: 0.33, green: 0.94, blue: 0.77))
                        .cornerRadius(50)
                        .padding()
                }
                Button(action: {}) {
                    Text("Next Year")
                        .bold()
                        .frame(width: 400, height: 70)
                        .foregroundColor(.black)
                        .background(Color(red: 0.99, green: 0.47, blue: 0.66))
                        .cornerRadius(50)
                        .padding()
                }
            }
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

