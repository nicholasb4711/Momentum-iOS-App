//
//  Goal.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import Foundation

struct Goal: Objective {
    let id = UUID()
    
    var title: String
    
    var startDate: Date
    
    var dueDate: Date
    
    var isComplete: Bool = false
    
    var milestones: [Milestone]
    
//    var reason: String
//    
//    var aiTone: String
//    
//    var momentum: Momentum
//    
//    var calendar: [Year]
//    
//    var successMetric: Metric
    
}
