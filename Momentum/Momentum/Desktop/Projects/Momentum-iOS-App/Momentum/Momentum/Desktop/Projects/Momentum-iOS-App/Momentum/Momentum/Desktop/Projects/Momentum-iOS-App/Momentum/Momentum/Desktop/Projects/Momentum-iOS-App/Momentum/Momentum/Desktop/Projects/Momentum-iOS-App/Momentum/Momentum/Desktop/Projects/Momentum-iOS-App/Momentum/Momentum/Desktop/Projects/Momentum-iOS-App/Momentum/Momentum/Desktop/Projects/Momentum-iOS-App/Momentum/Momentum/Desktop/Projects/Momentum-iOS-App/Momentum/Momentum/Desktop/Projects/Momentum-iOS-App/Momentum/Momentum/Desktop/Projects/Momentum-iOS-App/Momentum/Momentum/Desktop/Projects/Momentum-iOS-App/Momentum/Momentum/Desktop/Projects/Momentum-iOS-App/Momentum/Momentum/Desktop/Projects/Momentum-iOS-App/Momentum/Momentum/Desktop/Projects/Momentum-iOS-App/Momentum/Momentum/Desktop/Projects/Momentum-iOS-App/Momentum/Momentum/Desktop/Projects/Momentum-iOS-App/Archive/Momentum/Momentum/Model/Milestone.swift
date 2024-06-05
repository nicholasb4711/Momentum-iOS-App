//
//  Milestone.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import Foundation

struct Milestone: Objective {
    let id = UUID()
    
    var title: String
    
    var startDate: Date
    
    var dueDate: Date
    
    var isComplete: Bool = false
    
    var tasks: [Task]
    
    var habits: [Habit]
    
}
