//
//  Goal+CoreDataProperties.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/18/24.
//
//

import Foundation
import CoreData


extension Goal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Goal> {
        return NSFetchRequest<Goal>(entityName: "Goal")
    }

    @NSManaged public var milestones: NSSet?

}

// MARK: Generated accessors for milestones
extension Goal {

    @objc(addMilestonesObject:)
    @NSManaged public func addToMilestones(_ value: Milestone)

    @objc(removeMilestonesObject:)
    @NSManaged public func removeFromMilestones(_ value: Milestone)

    @objc(addMilestones:)
    @NSManaged public func addToMilestones(_ values: NSSet)

    @objc(removeMilestones:)
    @NSManaged public func removeFromMilestones(_ values: NSSet)

}

extension Goal : Identifiable {

}
