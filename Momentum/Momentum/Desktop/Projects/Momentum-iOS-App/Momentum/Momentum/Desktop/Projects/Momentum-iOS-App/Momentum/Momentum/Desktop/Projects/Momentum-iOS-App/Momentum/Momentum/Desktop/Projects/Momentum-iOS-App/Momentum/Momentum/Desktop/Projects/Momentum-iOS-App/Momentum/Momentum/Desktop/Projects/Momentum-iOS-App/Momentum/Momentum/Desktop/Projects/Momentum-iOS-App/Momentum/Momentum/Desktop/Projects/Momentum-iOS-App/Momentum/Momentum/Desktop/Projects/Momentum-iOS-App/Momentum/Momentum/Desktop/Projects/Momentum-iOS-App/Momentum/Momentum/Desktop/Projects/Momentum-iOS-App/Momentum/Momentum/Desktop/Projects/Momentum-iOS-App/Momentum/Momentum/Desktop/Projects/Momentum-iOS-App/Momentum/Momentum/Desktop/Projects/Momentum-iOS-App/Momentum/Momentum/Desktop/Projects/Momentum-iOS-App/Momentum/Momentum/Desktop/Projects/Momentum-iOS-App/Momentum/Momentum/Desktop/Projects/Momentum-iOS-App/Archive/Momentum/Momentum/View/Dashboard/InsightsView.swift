//
//  InsightsView.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI

struct InsightsView: View {
    var body: some View {
        NavigationView {
            Text("Insights")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        ThickText(text: "INSIGHTS", size: 45)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    InsightsView()
}
