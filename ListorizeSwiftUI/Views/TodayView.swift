//
//  TodayView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI
import Combine
import CoreData

struct TodayView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    @ObservedObject var taskStore = TaskStore()
    @State var newToDo: String = ""
    @State var open = false
    @State private var showingAddToDoView: Bool = false
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
    }
    
    var body: some View {
        
        // MARK: - START OF VSTACK
        VStack {
            Button(action: {
                self.showingAddToDoView.toggle()
            }) {
                Image(systemName: "plus")
                    .foregroundColor(Color(.systemBlue))
                    .font(.system(size: 30, weight:.bold))
                
            }
            
            .sheet(isPresented: $showingAddToDoView) {
                AddToDoView().environment(\.managedObjectContext, self.managedObjectContext)
            }
           
            .mask(Circle().fill())
            .padding()
            
            
          
            .pickerStyle(SegmentedPickerStyle())
            
            Form {
                ForEach(self.taskStore.tasks) { task in
                    Text(task.toDoItem)
                    
                }.onMove(perform: self.move)
                .onDelete(perform: self.delete)
                
            }
            
            .navigationBarTitle("TODAY", displayMode: .inline)
            .navigationBarItems(trailing:
                                    EditButton().foregroundColor(Color(.systemBlue))
            )
            
          
        }
           
            // MARK: - END OF VSTACK
   
        
        
    
    }
    
    func move(from soure: IndexSet, to destination: Int) {
        taskStore.tasks.move(fromOffsets: soure, toOffset: destination)
    }
    
    func delete(at offsets: IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
        TodayView()
            .preferredColorScheme(.dark)
      
    }
}

