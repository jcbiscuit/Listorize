//
//  ContentView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Testing!")
            .bold()
            .frame(width: 200, height: 200)
            .foregroundColor(.black)
            .background(Color.pink)
            .cornerRadius(50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
