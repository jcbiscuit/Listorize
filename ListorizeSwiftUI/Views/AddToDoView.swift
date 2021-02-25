//
//  AddToDoView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 21/2/21.
//

import SwiftUI
import CoreData

struct AddToDoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    
    @State private var name: String = ""
    @State private var errorShowing: Bool = false
    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""
    
    
    var body: some View {
        
        VStack {
            NavigationView {
                Form {
                    
                    TextField("Listorize Today", text: $name)
                    
                    Button(action: {
                        if self.name != "" {

                            
                        } else {
                            self.errorShowing = true
                            self.errorTitle = "Oops!"
                            self.errorMessage = "Be sure to enter something\nto Listorize Today"
                            return
                        }
                        self.presentationMode.wrappedValue.dismiss()
                        
                        
                    }) {
                        Text("Save")
                    }
                    
                }
                
                .navigationBarTitle("TODAY", displayMode: .inline)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            self.presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                                .font(.system(size: 20, weight:.bold))
                                            
                                        }
                )
            }
            
            .alert(isPresented: $errorShowing) {
                Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("Go it, thanks!")))
            }
        }
    }
    
    
    struct AddToDoView_Previews: PreviewProvider {
        static var previews: some View {
            AddToDoView()
            AddToDoView()
                .preferredColorScheme(.light)
        }
    }
    
}


