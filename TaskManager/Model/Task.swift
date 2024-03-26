//
//  Task.swift
//  TaskManager
//
//  Created by Ivan Iashin on 25/3/24.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Learn Swift", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "Learn Swift1", isCompleted: false, dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
            Task(title: "Learn Swift2", isCompleted: false, dueDate: Calendar.current.date(byAdding: .day, value: 3, to: Date())!),
            Task(title: "Learn Swift3", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!),
            Task(title: "Learn Swift4", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 5, to: Date())!)
        ]
    }
}
