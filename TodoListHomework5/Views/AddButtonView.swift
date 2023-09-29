//
//  AddButtonView.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/27/23.
//

import SwiftUI

struct AddButtonView: View {
  var body: some View {
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
}

#Preview {
  AddButtonView()
}
