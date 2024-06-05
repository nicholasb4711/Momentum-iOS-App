//
//  MutedHeading.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI

struct MutedHeading: View, CustomTextView{
    var fontName = "WorkSans-Bold"
    var text: String
    var size: CGFloat
    var color = Color("DimLettering")
    
    var body: some View {
        displayText()
    }
}

#Preview {
    MutedHeading(text: "Today", size: 20)
}
