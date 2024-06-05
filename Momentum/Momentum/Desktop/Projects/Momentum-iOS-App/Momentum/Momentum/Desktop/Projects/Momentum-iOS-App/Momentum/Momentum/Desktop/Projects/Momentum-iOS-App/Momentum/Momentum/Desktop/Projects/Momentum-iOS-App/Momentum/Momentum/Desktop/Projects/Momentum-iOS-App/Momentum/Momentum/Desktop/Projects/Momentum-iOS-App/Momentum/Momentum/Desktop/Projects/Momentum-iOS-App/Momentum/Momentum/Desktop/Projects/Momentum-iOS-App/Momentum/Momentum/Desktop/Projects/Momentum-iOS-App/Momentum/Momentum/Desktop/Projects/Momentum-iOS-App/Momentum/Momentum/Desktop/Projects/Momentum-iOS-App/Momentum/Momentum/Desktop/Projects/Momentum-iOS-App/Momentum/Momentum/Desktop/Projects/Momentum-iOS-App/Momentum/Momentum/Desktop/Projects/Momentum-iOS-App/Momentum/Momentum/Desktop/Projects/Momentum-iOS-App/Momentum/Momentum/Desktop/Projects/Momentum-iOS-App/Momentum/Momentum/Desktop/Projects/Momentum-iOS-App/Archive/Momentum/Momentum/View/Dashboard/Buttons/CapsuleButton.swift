//
//  CapsuleButton.swift
//  Momentum
//
//  Created by Michael Delaney on 2/7/24.
//

import SwiftUI

struct CapsuleButton: ButtonStyle {
    var isAdd: Bool
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            if(isAdd){
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 16, height: 16)
            }
            configuration.label
                .font(.custom("WorkSans-Medium", size: 14))
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 16)
        .background(Color("TabViewBackground"))
        .foregroundStyle(Color("MainBlue"))
        .overlay(
            Capsule()
                .stroke(Color("Border"), lineWidth: 5)
        )
        .clipShape(Capsule())
        .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
        .shadow(radius: 2, x: 0, y: 3)
    }
}

#Preview {
    Button("New task") {
        print("Button pressed!")
    }
    .buttonStyle(CapsuleButton(isAdd: true))
}

