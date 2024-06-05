//
//  MediumText.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI

struct MainText: View, CustomTextView {
    var fontName = "WorkSans-Regular"
    var text: String
    var size: CGFloat
    
    var body: some View {
        displayText()
    }
}

#Preview {
    MainText(text: "Today", size: 20)
}
