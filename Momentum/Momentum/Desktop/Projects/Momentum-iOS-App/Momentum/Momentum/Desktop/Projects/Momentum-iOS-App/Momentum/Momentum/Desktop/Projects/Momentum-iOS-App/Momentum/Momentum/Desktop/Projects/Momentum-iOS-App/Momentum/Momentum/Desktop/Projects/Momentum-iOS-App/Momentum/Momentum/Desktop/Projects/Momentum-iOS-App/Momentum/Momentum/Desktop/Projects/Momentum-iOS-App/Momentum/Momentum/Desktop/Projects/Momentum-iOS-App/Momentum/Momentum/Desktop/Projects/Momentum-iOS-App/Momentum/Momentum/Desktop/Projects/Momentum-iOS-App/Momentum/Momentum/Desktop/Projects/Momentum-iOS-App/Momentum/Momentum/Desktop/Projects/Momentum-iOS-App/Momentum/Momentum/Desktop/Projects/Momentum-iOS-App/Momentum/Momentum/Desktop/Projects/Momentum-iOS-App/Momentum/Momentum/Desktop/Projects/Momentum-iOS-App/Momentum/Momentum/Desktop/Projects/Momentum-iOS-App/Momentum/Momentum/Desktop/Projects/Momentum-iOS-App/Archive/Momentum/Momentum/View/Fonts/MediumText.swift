//
//  MediumText.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI

struct MediumText: View, CustomTextView {
    var fontName = "WorkSans-Medium"
    var text: String
    var size: CGFloat
    var color: Color = Color("Lettering")
    
    
    var body: some View {
        displayText()
    }
}

#Preview {
    MediumText(text: "Today", size: 20)
}
