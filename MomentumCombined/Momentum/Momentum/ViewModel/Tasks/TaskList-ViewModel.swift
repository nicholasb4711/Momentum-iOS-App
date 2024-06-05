//
//  Tasks-ViewModel.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import Foundation
import SwiftUI
import CoreData

extension TaskListView {
    class ViewModel: ObservableObject {
        @Published var tasks: [TaskView.ViewModel] = []
        
        let container: NSPersistentContainer
        
        private(set) var endOfTodayIndex: Int = 0
        
        private(set) var endOfWeekIndex: Int = 0
        
        let endOfWeek = Calendar.current.date(byAdding: .day, value: 7, to: Date())!
        
        //TODO: Make it not dumb
        init() {
            container = NSPersistentContainer(name: "GoalsContainer")
            container.loadPersistentStores { (description, error) in
                if let error = error {
                    print("Error Loading core data. \(error)")
                } else {
                    print("Successfully loaded core data")
                }
            }
            
//            let dummyTasks = Task.getDummyTasks()
//            self.tasks = dummyTasks.map { TaskView.ViewModel(task: $0) }
            fetchTasks()
        }
        
        func fetchTasks() {
            let request = NSFetchRequest<TaskEntity>(entityName: "TaskEntity")
            do {
                self.tasks = try container.viewContext.fetch(request).map{ TaskView.ViewModel(task: $0)}
            } catch let error {
                print("Error fetching. \(error)")
            }
            sortTasks()
            setIndices()
        }
        
        func addTask(title: String, dueDate: Date) {
            let newTask = TaskEntity(context: container.viewContext)
            newTask.title = title
            newTask.dueDate = dueDate
            newTask.id = UUID()
            newTask.isComplete = false
            newTask.startDate = Date()
            saveData()
        }
        
        func deleteTask(indexSet: IndexSet) {
            
        }
        
        func saveData() {
            do {
                try container.viewContext.save()
                fetchTasks()
            } catch let error {
                print("Error Saving: \(error)")
            }
        }
        
        private func sortTasks() {
            self.tasks.sort{ $0.dueDate < $1.dueDate}
        }
        
        private func setIndices() {
            var index = 0
            while(index < tasks.count && isTaskDueToday(tasks[index])) {
                index += 1
            }
            endOfTodayIndex = index
            
            while(index < tasks.count && isTaskDueThisWeek(tasks[index])) {
                index += 1
            }
            endOfWeekIndex = index
        }
        
        private func isTaskDueToday(_ taskViewModel: TaskView.ViewModel) -> Bool {
            return Calendar.current.isDateInToday(taskViewModel.dueDate)
        }
        
        private func isTaskDueThisWeek(_ taskViewModel: TaskView.ViewModel) -> Bool {
            return taskViewModel.dueDate < endOfWeek
        }
    }
}
