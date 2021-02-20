//
//  TodayView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI
import Combine

struct TodayView: View {
    
    @ObservedObject var taskStore = TaskStore()
    @State var newToDo: String = ""
    @State var open = false
    @State var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    
    var searchBar: some View {
        TextField("Listorize Today", text: self.$newToDo)
            .padding()
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(50)
    }
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
    }
    
    
    var body: some View {
        
        VStack {
            HStack{
                    searchBar.padding()
                
                Button(action: self.addNewToDo, label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight:.bold))
                })
                
               
                
                .padding(20)
                .background(Color(.systemBlue))
                .mask(Circle().fill())
                .padding(5)
            }
            
            Picker("Priority", selection: $priority) {
                ForEach(priorities, id: \.self) {
                    Text($0)
                }
            }
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
            .preferredColorScheme(.dark)
    }
}

