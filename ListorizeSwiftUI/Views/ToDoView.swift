////
////  ToDoView.swift
////  ListorizeSwiftUI
////
////  Created by Jody Clelland on 18/2/21.
////
//
//import SwiftUI
//
//struct ToDoList : Identifiable {
//    let id = UUID()
//    let name: String
//}
//
//struct ToDoView: View {
//
//
//
//    @ObservedObject
//    var toDoList: ToDoList
//
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(toDoList.items) { todo in
//                    Text("\(todo.title)")
//                }
//            }
//            .navigationBarTitle("Todo")
//            .navigationBarItems(
//                trailing: Button(action: {
//                    self.toDoList.add()
//                }) {
//                    Image(systemName: "plus")
//                        .font(.headline)
//                        .foregroundColor(.blue)
//                })
//        }
//    }
//}
//
//struct ToDoView_Previews: PreviewProvider {
//    static var previews: some View {
//        ToDoView()
//    }
//}
