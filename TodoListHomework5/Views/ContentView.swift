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
        ForEach(storeVM.store.indices, id: \.self) { idx in
          NavigationLink(value: idx) {
            TaskListRowView(storeVM: storeVM, taskIndex: idx)
          }
        } // end of ForEach loop
        .navigationDestination(for: Int.self) { idx in
          TaskDetailView(storeVM: storeVM, taskIndex: idx)
        }
        .navigationTitle("FanTASKtic")
        .toolbar {
          ToolbarItemGroup(placement: .bottomBar) {
            Button {
              showAddTaskView.toggle()
            } label: {
              AddButtonView()
            }
            .padding(.trailing, 5)
            
            Spacer() // moves the button to the left
          }
        }
        .sheet(isPresented: $showAddTaskView) {
          AddNewTaskView(storeVM: storeVM)
        }
      } // end of ScrollView
    } // end of NavigationStack
  } // end of body property
}


#Preview {
  ContentView()
}
