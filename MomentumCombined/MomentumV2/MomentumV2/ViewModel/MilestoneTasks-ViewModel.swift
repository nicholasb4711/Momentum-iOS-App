//
//  MilestoneTasks-ViewModel.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/19/24.
//

import Foundation
import CoreData

extension MilestoneTasksView {
    class ViewModel: ObservableObject{
        //let container: NSPersistentContainer
        
        @Published var tasks: [Task] = []
//        var milestone: Milestone
        
//        init(milestone: Milestone) {
//            self.milestone = milestone
//            container = NSPersistentContainer(name: "MomentumContainer")
//            container.loadPersistentStores { (description, error) in
//                if let error = error {
//                    print("ERROR LOADING CORE DATA. \(error)")
//                }
//            }
//            fetchTasks()
//        }
//        
//        func fetchTasks() {
//            let request = NSFetchRequest<Task>(entityName: "Task")
//            request.predicate = NSPredicate(format: "milestone == %@", milestone)
//            do {
//                tasks = try container.viewContext.fetch(request)
//            } catch let error {
//                print("Error fetching. \(error)")
//            }
//        }
//        
//        func addTasks(title: String, isComplete: Bool) {
//            let newTask = Task(context: container.viewContext)
//            newTask.title = title
//            newTask.isComplete = isComplete
//            saveData()
//        }
//        
//        func saveData() {
//            do{
//                try container.viewContext.save()
//                fetchTasks()
//            } catch let error {
//                print("Error saving. \(error)")
//            }
//        }
    }
}
