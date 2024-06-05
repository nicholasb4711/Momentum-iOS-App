//
//  NavButton.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/16/24.
//

import SwiftUI

struct NavButton: View {
    var icon: String
    var text: String
    
    var body: some View {
        HStack {
            Image(icon)
                .padding(.leading, 10)
            Text(text)
                .font(.workSans(.regular, 16))
                .foregroundColor(.lettering)
            
            Spacer()
            Image("ic-right-chevron")
                .padding(.trailing, 10)
        }
        .frame(height: 50)
        .background(.tabBackground)
        .cornerRadius(5)
        
    }
}

#Preview {
    NavButton(icon: "ic-today", text: "Today")
}
