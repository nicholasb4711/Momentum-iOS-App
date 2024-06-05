//
//  TaskPageView.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/16/24.
//

import SwiftUI
import CoreData

//TODO: Ambiguity that they are milestones.
struct TaskPageView: View {
    @StateObject private var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    
                } label: {
                    NavButton(icon: "ic-all-tasks", text: "All Tasks")
                }
                
                NavigationLink {
                    
                } label: {
                    NavButton(icon: "ic-today", text: "Today")
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.line)
                    .padding(.vertical)
                
                
                ForEach(viewModel.milestones, id: \.id) { milestone in
                    if (!milestone.isComplete){
                        NavigationLink {
                            MilestoneTasksView()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            NavButton(icon: "ic-button-inactive", text: milestone.wrappedTitle)
                        }
                    }
                }
                
                HStack{
                    Text("Completed")
                        .font(.workSans(.semibold, 14))
                        .foregroundColor(.symbolGrey)
                    Spacer()
                }
                .padding(.vertical)
                
                ForEach(viewModel.milestones, id: \.id) { milestone in
                    if (milestone.isComplete){
                        NavigationLink {
                            MilestoneTasksView()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            NavButton(icon: "ic-button-active", text: milestone.wrappedTitle)
                        }
                    }
                }
            }
            .padding()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("TASKS")
                            .font(.workSans(.heavy, 22))
                            .foregroundColor(Color("Lettering"))
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .background(Color("Background"))
        }
    }
}

//struct TaskPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskPageView()
//    }
//}

class MockViewModel: ObservableObject {
    @Published var milestones: [Milestone] = []
    
    init() {
        // Provide mock data here
        self.milestones = [
//            Milestone(id: UUID(), title: "Milestone 1", isComplete: false),
//            Milestone(id: UUID(), title: "Milestone 2", isComplete: true),
            // Add more mock milestones as needed
        ]
    }
}

struct TaskPageView_Previews: PreviewProvider {
    static var previews: some View {
        let mockViewModel = MockViewModel()
        
        return TaskPageView().environmentObject(mockViewModel)
    }
}
