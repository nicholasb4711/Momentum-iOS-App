//
//  TaskDisplay.swift
//  Momentum
//
//  Created by Michael Delaney on 2/6/24.
//

import SwiftUI

struct TaskView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        let taskString = viewModel.formattedDueDate()
        let isToday = taskString == "Today"
        HStack (alignment: .center, spacing: 8) {
            Button(action: {
                viewModel.isComplete.toggle()
            },
                   label: {
                Image(systemName: viewModel.isComplete ? "checkmark.square.fill" : "square")
                    .resizable()
                    .frame(width: 17, height: 17)
                    .foregroundColor(Color("MainBlue"))
            })
            
            MainText(text: viewModel.title, size: 16)
            Spacer()
            
            //Rounded rectangle
            MediumText(text: taskString, size: 12, color: Color(isToday ? "TabViewBackground" : "DimLettering"))
                .padding(.horizontal, 12)
                .padding(.vertical, 5)
                .foregroundColor(.white)
                .background(Color(isToday ? "MainBlue" : "LineColor"))
                .cornerRadius(4)
        }.shadow(radius: 2, x: 0, y: 3)
    }
}

//#Preview {
//    TaskView(viewModel: TaskView.ViewModel(task: Task(title: "Task", dueDate: Date())))
//}
