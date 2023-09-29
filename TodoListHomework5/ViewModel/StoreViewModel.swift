//
//  StoreViewModel.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/24/23.
//

import Foundation

class StoreViewModel: ObservableObject {
  @Published var store: [Task] = []
    
  init(withMockData: Bool = false) {
    store = []
    if withMockData {
      store.append(Task(title: "Mow Lawn", isCompleted: false, notes: "Front and Backyards."))
      store.append(Task(title: "Vacuum House", isCompleted: false, notes: "The robo vacuum is clogged."))
      store.append(Task(title: "Pull Weeds", isCompleted: true, notes: "Watch out for spikey ones!"))
      store.append(Task(title: "Harvest guavas", isCompleted: true, notes: "Get them before the birds do!!!"))
      store.append(Task(title: "Wash car", isCompleted: false, notes: "Or leave it parked outside in the rain."))
    }
  }
}

