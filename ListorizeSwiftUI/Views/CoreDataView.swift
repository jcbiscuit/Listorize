//
//  CoreDataView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 21/2/21.
//

import SwiftUI

struct CoreDataView: View {
    
    @State private var showingAddToDoView: Bool = false
    
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle("Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.showingAddToDoView.toggle()
                                    }) {
                                        Image(systemName: "plus")
                                        //This is where we want to open up the AddToDoView
                                    }
                .sheet(isPresented: $showingAddToDoView) {
                    AddToDoView()
                }
            )
        }
       
    }
}

struct CoreDataView_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataView()
    }
}
