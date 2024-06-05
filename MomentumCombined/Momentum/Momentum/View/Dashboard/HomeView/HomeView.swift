//
//  HomeView.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI

struct HomeView: View {
    var momentum: Int
    var momenta: [String: Int] = ["Habits": 90, "Tasks": 87, "Effort": 93, "Tracking": 25]
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("MainBlue"))
                Spacer()
                MediumText(text: Date().formatted(date: .long, time: .omitted), size: 16.0)
                    .opacity(0.6)
                Spacer()
                Image("ic-menu")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            .padding(.top, 50)
            
            
            
            ScrollView{
                MomentumScore(momentum: momentum)
                    .padding(.bottom)
                HStack (spacing: 4){
                    ForEach(momenta.sorted(by:  {$0.1 > $1.1}), id: \.key) { key, value in
                        VStack{
                            MediumText(text: key, size: 12)
                            ThickText(text: String(value), size: 19, color: value >= 50 ? Color("LightGreen"): Color("LightRed"))
                        }
                        .frame(width: 85, height: 50 )
                        .background(Color("TabViewBackground"))
                        .cornerRadius(8)
                        .overlay(
                            Rectangle()
                                .stroke(Color("SubtleOutline"), lineWidth: 2)
                                .cornerRadius(8)
                        )
                        .shadow(radius: 10)
                    }
                }
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView(momentum: 83)
}
