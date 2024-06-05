//
//  TaskDisplay-ViewModel.swift
//  Momentum
//
//  Created by Michael Delaney on 2/8/24.
//

import Foundation

extension TaskView {
//    class ViewModel: ObservableObject, Identifiable {
//        private var task: Task
//        
//        var id: UUID {
//            return self.task.id
//        }
//        
//        var title: String {
//            return self.task.title
//        }
//        
//        var dueDate: Date {
//            return self.task.dueDate
//        }
//        
//        @Published var isComplete: Bool {
//            didSet{
//                self.task.isComplete = self.isComplete
//                print("toggle isComplete. id[\(task.id)] name[\(task.title)] enabled[\(isComplete)]")
//            }
//        }
//        
//        init(task: Task) {
//            self.task = task
//            self.isComplete = task.isComplete
//        }
//        
//        func formattedDueDate() -> String {
//            let formatter = DateFormatter()
//            if Calendar.current.isDateInToday(task.dueDate) {
//                return "Today"
//            } else if Calendar.current.isDateInTomorrow(task.dueDate) {
//                return "Tomorrow"
//            } else {
//                formatter.dateFormat = "MMMM d"
//                return formatter.string(from: task.dueDate)
//            }
//        }
//        
//    }
    
    class ViewModel: ObservableObject, Identifiable {
        private var task: TaskEntity
        
        var id: UUID {
            return self.task.wrappedId
        }
        
        var title: String {
            return self.task.wrappedTitle
        }
        
        var dueDate: Date {
            return self.task.wrappedDueDate
        }
        
        @Published var isComplete: Bool {
            didSet{
                self.task.isComplete = self.isComplete
                print("toggle isComplete. id[\(task.wrappedId)] name[\(task.wrappedTitle)] enabled[\(isComplete)]")
            }
        }
        
        init(task: TaskEntity) {
            self.task = task
            self.isComplete = task.isComplete
        }
        
        func formattedDueDate() -> String {
            let formatter = DateFormatter()
            if Calendar.current.isDateInToday(task.wrappedDueDate) {
                return "Today"
            } else if Calendar.current.isDateInTomorrow(task.wrappedDueDate) {
                return "Tomorrow"
            } else {
                formatter.dateFormat = "MMMM d"
                return formatter.string(from: task.wrappedDueDate)
            }
        }
        
    }
}
