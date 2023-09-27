//
//  TaskDetailView.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/26/23.
//

import SwiftUI

struct TaskDetailView: View {
  @ObservedObject var storeVM: StoreViewModel
  var taskIndex: Int
  
  var body: some View {
    NavigationView {
      Form {
        Section("TASK TITLE") {
          TextField("Title", text: $storeVM.store[taskIndex].title)
        }
        
        Section("NOTES") {
          TextField("Notes", text: $storeVM.store[taskIndex].notes)
        }
        
        Section {
          Toggle(isOn: $storeVM.store[taskIndex].isCompleted) {
              Text("Completed")
          }
        }
      }
    }
  }
}

//#Preview {
//  TaskDetailView(storeVM: StoreViewModel(), taskIndex: 1)
//}
