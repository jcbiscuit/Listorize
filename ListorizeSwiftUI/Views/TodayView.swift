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
    
    //    @State var priority: String = "Normal"
    
    //    let priorities = ["High", "Normal", "Low"]
    
    
    //    var searchBar: some View {
    //        Text("")
    //        TextField("Listorize Today", text: self.$newToDo)
    //            .padding()
    //            .foregroundColor(Color("TextColor"))
    //            .background(Color.white)
    //            .cornerRadius(50)
    //    }
    
    
    //
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
    }
    
    var body: some View {
        
        VStack {
            //                    searchBar.padding()
            
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
            //                .background(Color(.systemBlue))
            .mask(Circle().fill())
            .padding()
            
            
            //            Picker("Priority", selection: $priority) {
            //                ForEach(priorities, id: \.self) {
            //                    Text($0)
            //                }
            //            }
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
        
        //        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        //        return TodayView()
        //            .environment(\.managedObjectContext, context)
    }
}

