//
//  TaskEntity+CoreDataProperties.swift
//  Momentum
//
//  Created by Michael Delaney on 2/14/24.
//
//

import Foundation
import CoreData


extension TaskEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskEntity> {
        return NSFetchRequest<TaskEntity>(entityName: "TaskEntity")
    }

    @NSManaged public var title: String?
    @NSManaged public var startDate: Date?
    @NSManaged public var dueDate: Date?
    @NSManaged public var isComplete: Bool
    @NSManaged public var id: UUID?
    
    public var wrappedTitle: String {
        title ?? "Unknown"
    }
    public var wrappedStartDate: Date {
        startDate ?? Date()
    }
    public var wrappedDueDate: Date {
        dueDate ?? Date()
    }

    public var wrappedId: UUID {
        id ?? UUID()
    }

}

extension TaskEntity : Identifiable {

}
