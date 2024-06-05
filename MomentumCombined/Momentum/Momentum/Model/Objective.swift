//
//  Objective.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import Foundation

protocol Objective: Identifiable {
    var title: String { get }
    var startDate: Date { get }
    var dueDate: Date { get }
    var isComplete: Bool { get set }
   // var dueDate: Date { get }
    
}

