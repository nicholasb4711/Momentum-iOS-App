//
//  Habit.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import Foundation

struct Habit: Objective {
    var title: String
    
    var startDate: Date
    
    var dueDate: Date
    
    var isComplete: Bool
    
    let id = UUID()
    
}
