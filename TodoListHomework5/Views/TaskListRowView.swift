//
//  TaskListRowView.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/27/23.
//

import SwiftUI

struct TaskListRowView: View {
  @ObservedObject var storeVM: StoreViewModel
  let taskIndex: Int
  
  var body: some View {
    VStack {
      HStack {
        Text("\(storeVM.store[taskIndex].title)")
          .fontWeight(.bold)
          .font(.title3)
        Spacer()
        Image(systemName: storeVM.store[taskIndex].isCompleted ? "checkmark.circle" : "circle")
          .foregroundStyle(storeVM.store[taskIndex].isCompleted ? .green : .red)
          .fontWeight(.bold)
          .font(.title)
      } // end of HStack
      Divider()
    } // end of VStack
    .padding(.horizontal, 30)
    .padding(.vertical, 12)
    .frame(maxWidth: .infinity)
  }
}

