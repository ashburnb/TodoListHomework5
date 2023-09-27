//
//  Task.swift
//  TodoListHomework5
//
//  Created by Brad Ashburn on 9/24/23.
//

import Foundation


struct Task: Hashable {
  let id = UUID()
  let title: String
  var isCompleted: Bool
  var notes: String
}
