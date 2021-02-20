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

    
    var searchBar: some View {
        HStack {
            TextField("Listorize Today", text: self.$newToDo)
            Button(action: self.addNewToDo, label: {
                Image(systemName: "plus").foregroundColor(.black)
//                Text("+").font(.system(size: 40)).foregroundColor(Color("TextColor"))
            })
            }
        }
        
        func addNewToDo() {
            taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
            self.newToDo = ""
        }
    
    
    var body: some View {
        
            VStack {
//                Text("TODAY").bold().kerning(2.5).multilineTextAlignment(.center)
//                    .frame(width: 400, height: 80)
//                    .font(.system(size: 20))
//                    .foregroundColor(Color("ScreenTextColor"))
//                    .background(Color("TodayColor"))
//                    .cornerRadius(50)
//                    .padding(.bottom)
               
                EditButton().foregroundColor(Color("TextColor"))
                
                searchBar.padding()
                
                List {
                    ForEach(self.taskStore.tasks) { task in
                        Text(task.toDoItem)
                    }.onMove(perform: self.move)
                    .onDelete(perform: self.delete)
                    
                }
                 
                .navigationBarTitle("TODAY", displayMode: .inline)
                
                
                
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

