//
//  CustomTextView.swift
//  Momentum
//
//  Created by Michael Delaney on 2/5/24.
//

import Foundation
import SwiftUI

public protocol CustomTextView {
    var text: String { get }
    var fontName: String { get }
    var size: CGFloat { get }
    var color: Color { get }

}

public extension CustomTextView {
    
    var color: Color {
            return Color("Lettering")
        }
    
    func displayText() -> some View {
        return Text(text)
            .font(.custom(fontName, size: size))
            .foregroundColor(color)
    }
}
