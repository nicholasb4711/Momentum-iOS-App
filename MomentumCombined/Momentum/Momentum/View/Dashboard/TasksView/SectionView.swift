//
//  SectionView.swift
//  Momentum
//
//  Created by Michael Delaney on 2/7/24.
//

import SwiftUI

//Section including header and tasks
struct SectionView: View {
    @Binding var taskViewModels: [TaskView.ViewModel]
    var startIndex: Int
    var endIndex: Int
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            ForEach(taskViewModels.indices[startIndex..<endIndex], id: \.self) { index in
                TaskView(viewModel: taskViewModels[index])
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

//struct SectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        // Generate dummy tasks
//        let dummyTasks = Task.getDummyTasks()
//        
//        // Convert dummy tasks to TaskDisplay.ViewModel
//        let taskViewModels = dummyTasks.map { TaskView.ViewModel(task: $0) }
//        
//        // Create a binding to the array of taskViewModels
//        let binding = Binding.constant(taskViewModels)
//        
//        // Preview SectionView with the array of taskViewModels
//        return SectionView(taskViewModels: binding, startIndex: 0, endIndex: binding.count)
//    }
//}
