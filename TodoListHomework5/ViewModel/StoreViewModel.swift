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
    var mockTaskData1 = Task(title: "Mow Lawn", isCompleted: false, notes: "It's soooo long")
    var mockTaskData2 = Task(title: "Vacuum House", isCompleted: false, notes: "Diiiiirty")
    var mockTaskData3 = Task(title: "Pull Weeds", isCompleted: true, notes: "Watch out for spikey ones!")
    var mockTaskData4 = Task(title: "Harvest guavas", isCompleted: true, notes: "Get them before the birds do")
    var mockTaskData5 = Task(title: "Wash car", isCompleted: false, notes: "Or leave it parked outside in the rain")
    
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
  
  func completeTask(task: inout Task, hasBeenCompleted: Bool) {
    if hasBeenCompleted {
      task.isCompleted = true
    } else {
      task.isCompleted = false
    }
  }
  
}

