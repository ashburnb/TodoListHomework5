//
//  TaskDetailView.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/26/23.
//

import SwiftUI

struct TaskDetailView: View {
  var title: String
  var isCompleted: Bool
  var notes: String
  
  var body: some View {
    NavigationView {
      Form {
//        Section("TASK TITLE") {
//          TextField("Title", text: title)
//        }
//        
//        Section("NOTES") {
//          TextEditor(text: notes)
//        }
//        
//        Toggle(isOn: isCompleted) {
//          Text("Completed?")
//        }
        
      }
      .navigationTitle("Add New Task")
    }
  }
}

#Preview {
  TaskDetailView(title: "Pet Mister Mang", isCompleted: true, notes: "Good kitty.")
}
