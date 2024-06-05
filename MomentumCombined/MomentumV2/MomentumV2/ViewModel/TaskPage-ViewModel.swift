//
//  TaskPage-ViewModel.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/18/24.
//

import Foundation
import CoreData

extension TaskPageView {
    class ViewModel: ObservableObject{
        
//        let container: NSPersistentContainer
        
        @Published var milestones: [Milestone] = []
        
        init() {
            fetchMilestones()
        }
        
        func fetchMilestones() {
            milestones = DataManager.shared.fetchMilestones()
        }
        
//        init() {
//            container = NSPersistentContainer(name: "MomentumContainer")
//            container.loadPersistentStores { (description, error) in
//                if let error = error {
//                    print("ERROR LOADING CORE DATA. \(error)")
//                }
//            }
//            fetchMilestones()
//        }
//        
//        func fetchMilestones() {
//            let request = NSFetchRequest<Milestone>(entityName: "Milestone")
//            
//            do {
//                milestones = try container.viewContext.fetch(request)
//            } catch let error {
//                print("Error fetching. \(error)")
//            }
//        }
//        
//        func addMilestone(title: String, isComplete: Bool) {
//            let newMilestone = Milestone(context: container.viewContext)
//            newMilestone.title = title
//            newMilestone.isComplete = isComplete
//            saveData()
//        }
//        
//        func saveData() {
//            do{
//                try container.viewContext.save()
//                fetchMilestones()
//            } catch let error {
//                print("Error saving. \(error)")
//            }
//        }
    }
}
