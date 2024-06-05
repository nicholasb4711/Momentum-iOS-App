//
//  Task.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import Foundation

struct Task: Objective {
    var title: String
    
    var startDate: Date
    
    var dueDate: Date
    
    var isComplete: Bool = false
    
    let id = UUID()
    
    init(title: String, startDate: Date = Date(), dueDate: Date) {
        self.title = title
        self.startDate = startDate
        self.dueDate = dueDate
    }
    
    static func getDummyTasks() -> [Task] {
        var tasks = [Task]()
        
        var dateComponents = DateComponents()
        dateComponents.year = 2024
        dateComponents.month = 1
        dateComponents.day = 1;
        
        let startDate = Calendar.current.date(from: dateComponents)!
        
        dateComponents.day = 2
        
        var dueDate = Date()
        tasks.append(Task(title: "Take a practice exam", startDate: startDate, dueDate: dueDate))
        
        dueDate = dueDate.addingTimeInterval(86400)
        tasks.append(Task(title: "Email academic advisor", startDate: startDate, dueDate: dueDate))
        
        dueDate = dueDate.addingTimeInterval(86400)
        tasks.append(Task(title: "Do the thingy", startDate: startDate, dueDate: dueDate))
        
        for _ in 1...20 {
            dueDate = dueDate.addingTimeInterval(1086400)
            tasks.append(Task(title: "Do the later thing", startDate: startDate, dueDate: dueDate))
        }
        
        return tasks
    }
    
}
