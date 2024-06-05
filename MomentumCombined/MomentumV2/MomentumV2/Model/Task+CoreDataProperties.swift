//
//  Task+CoreDataProperties.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/18/24.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var milestone: Milestone?

}

extension Task : Identifiable {

}
