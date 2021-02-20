//
//  NextMonthView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 16/2/21.
//

import SwiftUI
import Combine

struct UpcomingView: View {
    
    @ObservedObject var taskStore = TaskStore()
    @State var newToDo: String = ""
    @State var open = false
    
    var searchBar: some View {
        TextField("Listorize Upcoming", text: self.$newToDo).foregroundColor(.black)
            .multilineTextAlignment(.center)
            .padding()
            .foregroundColor(.black)
            .background(Color("TodayColor"))
            .cornerRadius(50)
    }
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
    }
    
    var body: some View {
        VStack {
            HStack{
                ZStack{
                    searchBar.padding()
                    Image(systemName: "pencil")
                        .font(.system(size: 25, weight:.bold))
                        .padding(.trailing, 240)
                }
                
                Button(action: self.addNewToDo, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight:.bold))
                })
                
                .padding(20)
                .background(Color(.systemBlue))
                .mask(Circle())
                .padding(5)
            }
            
            List {
                ForEach(self.taskStore.tasks) { task in
                    Text(task.toDoItem)
                }.onMove(perform: self.move)
                .onDelete(perform: self.delete)
            }
            
            .navigationBarTitle("UPCOMING", displayMode: .inline)
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

struct UpcomingView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingView()
        UpcomingView()
            .preferredColorScheme(.dark)
    }
}

