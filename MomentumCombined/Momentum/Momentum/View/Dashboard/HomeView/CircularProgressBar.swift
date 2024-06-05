//
//  CircularProgressBar.swift
//  Momentum
//
//  Created by Michael Delaney on 2/9/24.
//

import SwiftUI

//Maybe add a color associated to the momentum score?
struct CircularProgressBar: View {
    
    let viewModel: ViewModel
    
    init(momentum: Int) {
        self.viewModel = ViewModel(progress: momentum)
    }
    
    var body: some View {
        ZStack{
            ForEach(viewModel.rectangles.indices, id: \.self) { index in
                RectangleView(rect: viewModel.rectangles[index], delay: TimeInterval(index)/30)
            }
        }
    }
    
    struct RectangleView: View {
        var rect: rectData
        var delay: TimeInterval = 0
        @State private var isProgress = false
        @State private var progressColor: Color = Color.red
        var body: some View {
            Rectangle()
                .offset(y: rect.offset)
                .frame(width: isProgress ? 4 : 2, height: rect.height)
                .rotationEffect(rect.angle)
                .foregroundColor(isProgress ? Color("LightGreen") : Color("LineColor"))
                .shadow(color: isProgress ? Color("LightGreen"): .black, radius: 2)
            //TODO: UNCOMMENT FOR ANIMATION
                .animation(.bouncy(duration: 2).delay(delay), value: isProgress)
                .onAppear{
                    isProgress = rect.isProgress
                }
                .frame(width: 370, height: 370)
        }
    }
}


#Preview {
    CircularProgressBar(momentum: 86)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
}
