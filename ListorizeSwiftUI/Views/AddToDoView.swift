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
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    @State private var name: String = ""
    @State private var errorShowing: Bool = false
    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""


    func addNewItem() {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Saving", in: managedContext)!
        
        let newToDo = NSManagedObject(entity: entity, insertInto: managedContext)
        
        newToDo.setValue($name.wrappedValue, forKeyPath: "stringAttribute")
        
        _ = Saving(context: self.managedObjectContext)
    
    
    }
//        do {
//            try managedContext.save()
//            print("saved successfully -- \($name.wrappedValue)")
//        } catch let error as NSError {
//            print("Could not save. \(error), \(error.userInfo)")
//        }
    

    var body: some View {
        
            VStack {
                NavigationView {
            
                Form {
                    
                    TextField("Listorize Today", text: $name)
                
                    Button(action: {
                        if self.name != "" {
                            addNewItem()
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


