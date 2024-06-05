//
//  FontsExtension.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/16/24.
//

import Foundation
import SwiftUI

extension Font {
    enum WorkSansFont {
        case semibold
        case heavy
        case regular
        
        
        var value: String {
            switch self {
            case .semibold:
                return "WorkSans-SemiBold"
                
            case .heavy:
                return "WorkSans-ExtraBold"
                
            case .regular:
                return "WorkSans-Regular"
            }
            
        }
    }
    
    
    static func workSans(_ type: WorkSansFont = .regular, _ size: CGFloat = 14) -> Font {
        return .custom(type.value, size: size)
    }
}
