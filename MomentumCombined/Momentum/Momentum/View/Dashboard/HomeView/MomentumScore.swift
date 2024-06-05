//
//  MomentumScore.swift
//  Momentum
//
//  Created by Michael Delaney on 2/13/24.
//

import SwiftUI

//TODO: function for changing the "Good" label and lock in animation timing
struct MomentumScore: View {
    var momentum: Int
    //TODO: Change to show animation
    @State private var fadeIn = false

    var body: some View {
        ZStack {
            CircularProgressBar(momentum: momentum)
            VStack (spacing: 0) {
                HStack{
                    MediumText(text: "momentum", size: 16)
                    Image(systemName: "info.circle")
                        .foregroundColor(Color("Lettering"))
                }
                .opacity(fadeIn ? 1 : 0)
                .animation(.easeIn.delay(TimeInterval(Double(momentum) / 27) + 0.5), value: fadeIn)
                .onAppear {
                    fadeIn = true
                }
                
                ThickText(text: String(momentum), size: 114)
                    .opacity(fadeIn ? 1 : 0)
                    .animation(.easeIn.delay(TimeInterval(Double(momentum) / 27) + 0.7), value: fadeIn)
                
                MediumText(text: "Good", size: 12, color: Color("Background"))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 5)
                    .background(Color("LightGreen"))
                    .cornerRadius(4)
                    .opacity(fadeIn ? 1 : 0)
                    .animation(.easeIn.delay(TimeInterval(Double(momentum) / 27) + 0.9), value: fadeIn)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
    }
}

#Preview {
    MomentumScore(momentum: 50)
}
