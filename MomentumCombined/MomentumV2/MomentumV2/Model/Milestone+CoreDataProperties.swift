//
//  Milestone+CoreDataProperties.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/18/24.
//
//

import Foundation
import CoreData


extension Milestone {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Milestone> {
        return NSFetchRequest<Milestone>(entityName: "Milestone")
    }

    @NSManaged public var goal: Goal?
    @NSManaged public var habits: NSSet?
    @NSManaged public var tasks: NSSet?

}

// MARK: Generated accessors for habits
extension Milestone {

    @objc(addHabitsObject:)
    @NSManaged public func addToHabits(_ value: Habit)

    @objc(removeHabitsObject:)
    @NSManaged public func removeFromHabits(_ value: Habit)

    @objc(addHabits:)
    @NSManaged public func addToHabits(_ values: NSSet)

    @objc(removeHabits:)
    @NSManaged public func removeFromHabits(_ values: NSSet)

}

// MARK: Generated accessors for tasks
extension Milestone {

    @objc(addTasksObject:)
    @NSManaged public func addToTasks(_ value: Task)

    @objc(removeTasksObject:)
    @NSManaged public func removeFromTasks(_ value: Task)

    @objc(addTasks:)
    @NSManaged public func addToTasks(_ values: NSSet)

    @objc(removeTasks:)
    @NSManaged public func removeFromTasks(_ values: NSSet)

}

extension Milestone : Identifiable {

}

extension Milestone {
    static var all: NSFetchRequest<Milestone> {
        let request = Milestone.fetchRequest()
        request.sortDescriptors = []
        return request
    }
}
