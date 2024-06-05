//
//  DashboardView.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI

struct DashboardView: View {
    @State private var tabSelection = 1
    var body: some View {
        TabView(selection: $tabSelection) {
            TaskListView()
                .tag(1)
            
            HomeView(momentum: 83)
                .tag(2)
            
            InsightsView()
                .tag(3)
            
            GoalView()
                .tag(4)
        }
        .overlay(alignment: .bottom) {
            CustomTabView(tabSelection: $tabSelection)
        }.ignoresSafeArea()
        
    }
}

#Preview {
    DashboardView()
}
