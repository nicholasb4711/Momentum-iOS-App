//
//  Objective.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/18/24.
//

import Foundation
import CoreData

public class Objective: NSManagedObject {
    @NSManaged public var title: String?
    @NSManaged public var startDate: Date?
    @NSManaged public var dueDate: Date?
    @NSManaged public var isComplete: Bool
}

extension Objective {
    public var wrappedTitle: String {
        return self.title ?? "Unknown"
    }
    
    public var wrappedStartDate: Date {
        return self.startDate ?? Date()
    }
    
    public var wrappedDueDate: Date {
        return self.dueDate ?? Date()
    }
}
