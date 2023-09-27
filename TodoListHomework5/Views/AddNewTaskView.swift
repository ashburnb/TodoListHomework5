//
//  AddNewTaskView.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/26/23.
//

import SwiftUI

struct AddNewTaskView: View {
  @State private var taskTitle: String = ""
  @State private var notes: String = ""
  
  
  var body: some View {
    NavigationView {
      Form {
        
        Section("TASK TITLE") {
          TextField("Title", text: $taskTitle)
        }
        
        Section("NOTES") {
          TextField("Notes", text: $notes)
        }
        
      }
      .navigationTitle("Add New Task")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItemGroup(placement: .topBarLeading) {
          Button {
            // dismiss sheet
            // do not save data
          } label: {
            Text("Cancel")
          }
        }
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            // dismiss sheet
            // toggle showAddTaskView
            // save the data
          } label: {
            Text("Add")
          }
        }
      }
    }
  }
}

#Preview {
  AddNewTaskView()
}
