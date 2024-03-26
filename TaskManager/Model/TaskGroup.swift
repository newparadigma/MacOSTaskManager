//
//  TaskGroup.swift
//  TaskManager
//
//  Created by Ivan Iashin on 25/3/24.
//

import Foundation

struct TaskGroup: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var creatinDate = Date()
    var tasks: [Task]
    
    init(title: String, tasks: [Task] = []) {
        self.title = title
        self.tasks = tasks
    }
    
    static func example() -> TaskGroup {
        return TaskGroup(title: "Personal", tasks: [
            Task(title: "Buy a soap"),
            Task(title: "Buy a water"),
            Task(title: "Make bubbles")
        ])
    }

    static func examples() -> [TaskGroup] {
        return [
            TaskGroup.example(),
            TaskGroup(title: "Work")
        ]
    }
}
