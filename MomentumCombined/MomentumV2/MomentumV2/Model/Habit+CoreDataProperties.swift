//
//  Habit+CoreDataProperties.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/18/24.
//
//

import Foundation
import CoreData


extension Habit {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Habit> {
        return NSFetchRequest<Habit>(entityName: "Habit")
    }

    @NSManaged public var milestone: Milestone?

}

extension Habit : Identifiable {

}
