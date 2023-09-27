//
//  ContentView.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/24/23.
//

import SwiftUI

struct ContentView: View {
  @StateObject private var storeVM = StoreViewModel(withMockData: true)
  @State private var showAddTaskView = false
  
  var body: some View {
    NavigationStack {
      ScrollView {
        ForEach(storeVM.store, id: \.id) { task in
          NavigationLink(value: task) {
            VStack {
              HStack {
                Text("\(task.title)")
                  .fontWeight(.bold)
                  .font(.title3)
                Spacer()
                Image(systemName: task.isCompleted ? "checkmark.circle" : "circle")
                  .foregroundStyle(task.isCompleted ? .green : .red)
                  .fontWeight(.bold)
                  .font(.title)
              } // end of HStack
              Divider()
            } // end of VStack
            .padding(.horizontal, 30)
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
          } // end of NavigationLink
        } // end of ForEach loop
        .navigationDestination(for: Task.self) { taskDetails in
          TaskDetailView(title: taskDetails.title, isCompleted: taskDetails.isCompleted, notes: taskDetails.notes)
        }
        .navigationTitle("FanTASKtic")
        .toolbar {
          ToolbarItemGroup(placement: .bottomBar) {
            Button {
              showAddTaskView.toggle()
            } label: {
              
              HStack {
                Image(systemName: "plus.circle.fill")
                Text("New Task")
                  .fontWeight(.bold)
              }
              .font(.title2)
              .padding()
              .background(.blue)
              .foregroundStyle(.white)
              .clipShape(
                RoundedRectangle(cornerRadius: 20)
              )
            }
            .padding(.trailing, 5)
            Spacer()
          }
        }
        .sheet(isPresented: $showAddTaskView) {
          AddNewTaskView()
        }
      } // end of ScrollView
    } // end of NavigationStack
  } // end of body property
}








#Preview {
  ContentView()
}