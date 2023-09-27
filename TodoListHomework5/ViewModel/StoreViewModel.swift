//
//  StoreViewModel.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/24/23.
//

import Foundation

class StoreViewModel: ObservableObject {
  @Published var store: [Task]
  
  init() {
    store = []
  }
  
  init(withMockData: Bool = false) {
    let mockTaskData1 = Task(title: "Mow Lawn", isCompleted: false, notes: "It's soooo long")
    let mockTaskData2 = Task(title: "Vacuum House", isCompleted: false, notes: "Diiiiirty")
    let mockTaskData3 = Task(title: "Pull Weeds", isCompleted: true, notes: "Watch out for spikey ones!")
    let mockTaskData4 = Task(title: "Harvest guavas", isCompleted: true, notes: "Get them before the birds do")
    let mockTaskData5 = Task(title: "Wash car", isCompleted: false, notes: "Or leave it parked outside in the rain")
    
    store = []
    store.append(mockTaskData1)
    store.append(mockTaskData2)
    store.append(mockTaskData3)
    store.append(mockTaskData4)
    store.append(mockTaskData5)
  }
  
  // methods to add and complete a Task
  func addTask() {
    // do it
  }
  
  func completeTask() {
    
  }
  
}

