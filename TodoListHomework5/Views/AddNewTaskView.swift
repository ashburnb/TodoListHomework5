//
//  AddNewTaskView.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/26/23.
//

import SwiftUI

struct AddNewTaskView: View {
  @ObservedObject var storeVM: StoreViewModel
  @Environment(\.dismiss) var dismiss
  @State private var taskTitle: String = ""
  @State private var notes: String = ""
  
  
  var body: some View {
    NavigationView {
      Form {
        
        Section("TASK TITLE") {
          TextField("Title", text: $taskTitle)
        }
        
        Section("NOTES") {
          TextEditor(text: $notes)
            .frame(minHeight: 130)
        }
        
      }
      .navigationTitle("Add New Task")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItemGroup(placement: .topBarLeading) {
          Button {
            dismiss()
            // do not save data
          } label: {
            Text("Cancel")
          }
        }
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            dismiss()
            let newTask = Task(title: taskTitle, isCompleted: false, notes: notes)
            storeVM.store.append(newTask)
          } label: {
            Text("Add")
          }
          .disabled(taskTitle == "")
        }
      }
    }
  }
}

#Preview {
  AddNewTaskView(storeVM: StoreViewModel())
}
