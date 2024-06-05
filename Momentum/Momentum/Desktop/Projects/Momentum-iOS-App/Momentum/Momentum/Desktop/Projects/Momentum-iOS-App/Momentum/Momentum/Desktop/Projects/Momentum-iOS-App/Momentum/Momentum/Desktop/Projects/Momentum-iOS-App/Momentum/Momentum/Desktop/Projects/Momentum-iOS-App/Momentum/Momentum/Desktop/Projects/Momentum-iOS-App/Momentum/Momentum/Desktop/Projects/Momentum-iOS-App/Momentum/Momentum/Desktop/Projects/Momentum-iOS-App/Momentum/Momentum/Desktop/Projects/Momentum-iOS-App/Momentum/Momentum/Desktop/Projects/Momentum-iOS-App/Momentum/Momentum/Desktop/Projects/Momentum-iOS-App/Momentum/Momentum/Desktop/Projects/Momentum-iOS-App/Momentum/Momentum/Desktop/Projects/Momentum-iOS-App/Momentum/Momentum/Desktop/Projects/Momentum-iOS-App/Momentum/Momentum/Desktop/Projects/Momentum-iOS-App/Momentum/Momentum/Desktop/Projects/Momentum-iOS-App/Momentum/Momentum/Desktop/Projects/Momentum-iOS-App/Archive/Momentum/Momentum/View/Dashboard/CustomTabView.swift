//
//  CustomTabView.swift
//  Momentum
//
//  Created by Michael Delaney on 2/4/24.
//

import SwiftUI


//Custom tab view for dashboard. Sizes are hardcoded which will need to be dealt with eventually
struct CustomTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    let TAB_VIEW_SIZE = 100.0
    
    let tabBarItems: [(image: String, title: String)] = [
        ("ic-tasks", "Tasks"),
        ("ic-home", "Home"),
        ("ic-insights", "Insights"),
        ("ic-goal", "Goal")]
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: TAB_VIEW_SIZE)
                .foregroundColor(Color("TabViewBackground"))
            
            HStack {
                ForEach(0..<4) { index in
                    Button {
                        tabSelection = index + 1
                    } label: {
                        Spacer()
                        VStack (spacing: 8) {
                            Spacer()
                            let width = index == 1 ? 42.5 : 28.0
                            
                            Image(tabBarItems[index].image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: width, height: 28, alignment: .top)
                                .clipped()
                            
                            
                            if (index + 1 != tabSelection) {
                                MediumText(text: tabBarItems[index].title, size: 12)
                                    .foregroundColor(Color("TabLetters"))
                            }
                            else {
                                ZStack{
                                    Capsule()
                                        .frame(width: CGFloat(tabBarItems[index].title.count) * 3 + 35, height: 14)
                                        .foregroundColor(Color("TabLetters"))
                                        .matchedGeometryEffect(id: "SelectedTabId", in: animationNamespace)
                                    MediumText(text: tabBarItems[index].title, size: 12, color: Color("TabViewBackground"))
                                }
                            }
                            Spacer()
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
            .frame(height: TAB_VIEW_SIZE)
        }
    }
}

#Preview {
    CustomTabView(tabSelection: .constant(1))
}
