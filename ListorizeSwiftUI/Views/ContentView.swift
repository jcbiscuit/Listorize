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
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
        VStack {
            
            NavigationView {
                VStack {
                    Text("LISTORIZE").bold().underline().kerning(2.5)
                        .font(.system(size: 40)).fontWeight(.thin).foregroundColor(Color("TextColor"))
                        .padding(.bottom, 60)
                    
                    NavigationLink(
                        destination: TodayView()) {
                        Text("TODAY").bold().font(.system(size: 20)).kerning(2.5)
                            .frame(width: 400, height: 70)
                            .foregroundColor(.black)
                            .background(ZStack {
                                Color("TodayColor")
                                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                            })
                            .cornerRadius(50)
                            .padding()
                
            }
                    NavigationLink(
                        destination: TomorrowView()) {
                        Text("TOMORROW") .bold().font(.system(size: 20)).kerning(2.5)
                            .frame(width: 400, height: 70)
                            .foregroundColor(.black)
                            .background(ZStack {
                                Color("TomorrowColor")
                                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    })
                            .cornerRadius(50)
                            .padding()
                        
            }
                    NavigationLink(
                        destination: NextWeekView()) {
                        Text("NEXT WEEK").bold().font(.system(size: 20)).kerning(2.5)
                        .frame(width: 400, height: 70)
                        .foregroundColor(.black)
                        .background(ZStack {
                            Color("NextWeekColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    })
                        .cornerRadius(50)
                    .padding()
            }
                NavigationLink(
                    destination: NextMonthView()) {
                    Text("NEXT MONTH").font(.system(size: 20)).bold().kerning(2.5)
                        .frame(width: 400, height: 70)
                        .foregroundColor(.black)
                        .background(ZStack {
                            Color("NextMonthColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                        })
                        .cornerRadius(50)
                        .padding()
                }
                NavigationLink(
                    destination: NextYearView()) {
                    Text("NEXT YEAR").font(.system(size: 20)).bold().kerning(2.5)
                        .frame(width: 400, height: 70)
                        .foregroundColor(.black)
                        .background(ZStack {
                            Color("NextYearColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                        })
                        .cornerRadius(50)
                        .padding()
                }
            }
        }
           
    }
            
        }
    }
}
struct ContntView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}

