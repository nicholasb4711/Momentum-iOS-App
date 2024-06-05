//
//  CircularProgressBar-ViewModel.swift
//  Momentum
//
//  Created by Michael Delaney on 2/9/24.
//

import Foundation
import SwiftUI

extension CircularProgressBar {
    struct rectData: Hashable, Identifiable {
        var id: UUID = UUID()
        var angle: Angle
        var offset: CGFloat
        var height: CGFloat
        var isProgress: Bool = false
    }
    
    class ViewModel {
        var progress: Int
        private let radius: CGFloat = 160
        private let tickMarkLength: CGFloat = 20
        private let numberOfRectangles = 100
        private var tickMarkWidth: CGFloat = 2
        
        init(progress: Int) {
            self.progress = progress
        }
        
        var rectangles: [rectData] {
            var rect: [rectData] = []
            for i in 0..<numberOfRectangles {
                rect.append(tickMark(degrees: CGFloat(i) * 3.6))
            }
            return rect
        }
        
        private func tickMark(degrees: CGFloat) -> rectData {
            return rectData(angle: .degrees(degrees), offset: -radius - (tickMarkLength / 2), height: tickMarkLength, isProgress: isProgress(degrees: degrees))
        }
        
        private func isProgress(degrees: CGFloat) -> Bool {
            let progressFraction = CGFloat(progress) / 100.0
            let degreesFraction = degrees / 360.0
            return degreesFraction < progressFraction
        }
    }
}
