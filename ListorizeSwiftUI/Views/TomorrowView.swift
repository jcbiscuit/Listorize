//
//  TomorrowView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI
import Combine

struct TomorrowView: View {
    
    @ObservedObject var taskStore = TaskStore()
    @State var newToDo: String = ""
    
    var searchBar: some View {
        HStack {
            TextField("Enter in a new task", text: self.$newToDo)
            Button(action: self.addNewToDo, label: {
                Text("+").font(.system(size: 40)).foregroundColor(Color("TextColor"))
            })
            }
        }
        
        func addNewToDo() {
            taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
            self.newToDo = ""
        }
    
    var body: some View {
     
            VStack {
                Text("TOMORROW").bold().kerning(2.5).multilineTextAlignment(.center)
                    .frame(width: 400, height: 80)
                    .font(.system(size: 20))
                    .foregroundColor(Color("ScreenTextColor"))
                    .background(Color("TomorrowColor"))
                    .cornerRadius(50)
                    .padding(.bottom)
                
                EditButton().foregroundColor(Color("TextColor"))
                
                searchBar.padding()
                
                List {
                    ForEach(self.taskStore.tasks) { task in
                        Text(task.toDoItem)
                    }.onMove(perform: self.move)
                    .onDelete(perform: self.delete)
                    
                }
                 
                
                
            }
            
        }
        
    
        func move(from soure: IndexSet, to destination: Int) {
            taskStore.tasks.move(fromOffsets: soure, toOffset: destination)
        }
        
        func delete(at offsets: IndexSet) {
            taskStore.tasks.remove(atOffsets: offsets)
        }
    }
                
                
    
                
                
//            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(5.0), Color.clear]), startPoint: .bottom, endPoint: .top)
        
    

struct TomorrowViews_Preview: PreviewProvider {
    static var previews: some View {
        TomorrowView()
        TomorrowView()
            .preferredColorScheme(.dark)
    }
}


