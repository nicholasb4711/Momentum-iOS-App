//
//  Dashboard.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/16/24.
//

import SwiftUI

struct DashboardView: View {
    @Environment(\.managedObjectContext) var viewContext
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            TaskPageView()
                .tag(1)
            
            HomeView()
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
