//
//  Header.swift
//  Momentum
//
//  Created by Michael Delaney on 2/7/24.
//

import SwiftUI

struct Header: View {
    var text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 4) {
            HStack{
                MutedHeading(text: text, size: 14)
                Spacer()
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity, maxHeight: 1)
                .background(Color("LineColor"))
        }
        .padding(.horizontal)
        .background(Color("Background"))
    }
}

#Preview {
    Header(text: "Today")
}
