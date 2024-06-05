//
//  DataManager.swift
//  MomentumV2
//
//  Created by Michael Delaney on 3/3/24.
//

import Foundation
import CoreData

class DataManager {
    static let shared = DataManager()
    private let persistenceController = PersistenceController.shared
    
    func fetchMilestones() -> [Milestone] {
        let request: NSFetchRequest<Milestone> = Milestone.fetchRequest()
        do {
            return try persistenceController.container.viewContext.fetch(request)
        } catch {
            print("Error fetching milestones: \(error)")
            return []
        }
    }
    
    // Fetch tasks from Core Data
    func fetchTasks() -> [Task] {
        let request: NSFetchRequest<Task> = Task.fetchRequest()
        do {
            return try persistenceController.container.viewContext.fetch(request)
        } catch {
            print("Error fetching tasks: \(error)")
            return []
        }
    }
    
    // Other methods for data manipulation can be added here
}
