//
//  TasksView.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI

//TODO: Figure out what to do with past due tasks, old complete tasks, and how to indicate scrolling. Gotta implement the add button. Might wait till that is designed
//Main task view
struct TaskListView: View {
    @ObservedObject private var viewModel = ViewModel()
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack (alignment: .leading, pinnedViews: [.sectionHeaders]) {
                        Section{
                            SectionView(taskViewModels: $viewModel.tasks, startIndex: 0, endIndex: viewModel.endOfTodayIndex)
                        } header: {
                            Header(text: "Today")
                        }
                        Section{
                            SectionView(taskViewModels: $viewModel.tasks, startIndex: viewModel.endOfTodayIndex, endIndex: viewModel.endOfWeekIndex)
                        } header: {
                            Header(text: "This Week")
                        }
                        Section{
                            SectionView(taskViewModels: $viewModel.tasks, startIndex: viewModel.endOfWeekIndex, endIndex: viewModel.tasks.count)
                        } header: {
                            Header(text: "Later")
                        }
                    }
                }
                .frame(height: 500)
                Spacer()
                HStack{
                    //TODO: New Task page
                    Button("New task") {
                        viewModel.addTask(title: "Title", dueDate: Date() + 500000)
                    }
                    .buttonStyle(CapsuleButton(isAdd: true))
                    .padding(.leading)
                    Spacer()
                }
                
            }
            .padding(.top, 30)
            //Frame for button and scrollview to keep it above tab view
            .frame(height: 625)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    ThickText(text: "TASKS", size: 45)
                }
            }
            //frame for the background
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color("Background"))
        }
    }
}

#Preview {
    TaskListView()
}
