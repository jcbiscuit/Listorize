//
//  ContentView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI
import Combine

struct SplashScreenView: View {

    @State var animate = false
    @State var endSplash = false

    var body: some View {
        ZStack {
            ZStack {
                Color("SplashScreen")

                Image("LSB")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: animate ? nil : 45, height: animate ? nil : 45)

                    .scaleEffect(animate ? 3 : 1)
                    .frame(width: UIScreen.main.bounds.width)
                    
            }

            .ignoresSafeArea(.all, edges: .all)
            .onAppear(perform: animateSplash)
            .opacity(endSplash ? 0 : 1)
                }
            }

    func animateSplash() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            withAnimation(Animation.easeOut(duration: 0.45)) {
                animate.toggle()
            }
            withAnimation(Animation.linear(duration: 0.35)) {
                endSplash.toggle()
            }
        }
    }

        }

   
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

