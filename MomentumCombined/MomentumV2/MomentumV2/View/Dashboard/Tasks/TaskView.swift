//
//  TaskView.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/20/24.
//

import SwiftUI
import CoreData

struct TaskView: View {
    var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.isComplete ? "checkmark.square.fill" : "square")
                .foregroundColor(.mainBlue)
            
            Text(task.wrappedTitle)
                .font(.workSans())
                .foregroundColor(.lettering)
            
            Spacer()
            
            Text(task.wrappedDueDate.formatted(Date.FormatStyle()
                .month(.abbreviated)
                .day(.twoDigits)
            ))
            .font(.workSans(.semibold, 11))
            .foregroundColor(.lettering)
            .padding(.horizontal, 7)
            .padding(.vertical, 5)
            .background(Color(.dateBackground))
            .cornerRadius(5)
            
        }
    }
}
//
//#Preview {
//    
//    let task: Task = Task(context: CoreDataManager.mockContext())
//    task.title = "Task"
//    task.isComplete = true
//    task.dueDate = Date()
//    return TaskView(task: task)
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color("Background"))
//}
