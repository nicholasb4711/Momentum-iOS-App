//
//  SwiftUIView.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI

struct ThickText: View, CustomTextView {
    var fontName = "WorkSans-Black"
    var text: String
    var size: CGFloat
    var color = Color("Lettering")

    
    var body: some View {
        displayText()
    }
}

#Preview {
    ThickText(text: "Hello", size: 20)
}
