//
//  MilestoneTasksView.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/19/24.
//

import SwiftUI
import CoreData

struct MilestoneTasksView: View {
    @Environment(\.dismiss) var dismiss
//    var milestone: Milestone
    @ObservedObject private var viewModel: ViewModel
    
    init() {
        viewModel = ViewModel()
    }
    
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
//                Text(milestone.wrappedTitle)
                //Hardcoded value for testing
                Text("Graduate College")
                    .font(.workSans(.semibold, 28))
                    .foregroundColor(.lettering)
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button{
                        dismiss()
                    } label: {
                        Image("ic-left-chevron")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(Color("Background"))
        }
    }
}

#Preview {
    MilestoneTasksView()
}

