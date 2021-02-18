//
//  File.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 18/2/21.
//

import Foundation
import SwiftUI
import Combine

struct Task: Identifiable {
    var id = String()
    var toDoItem = String()
}

class TaskStore: ObservableObject {
    @Published var tasks = [Task]()
}
