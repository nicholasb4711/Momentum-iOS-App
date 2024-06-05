//
//  CustomTabView.swift
//  MomentumV2
//
//  Created by Michael Delaney on 2/16/24.
//

import SwiftUI



//Custom tab view for dashboard. Sizes are hardcoded which will need to be dealt with eventually
struct CustomTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    let TAB_VIEW_SIZE = 120.0
    
    let tabBarItems: [(image: String, title: String)] = [
        ("ic-tasks", "Tasks"),
        ("ic-home", "Home"),
        ("ic-insights", "Insights"),
        ("ic-goal", "Goal")]
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: TAB_VIEW_SIZE)
                .foregroundColor(.tabBackground)
            
            HStack {
                ForEach(0..<4) { index in
                    Button {
                        tabSelection = index + 1
                    } label: {
                        Spacer()
                        VStack (spacing: 8) {
                            Spacer()
                            
                            Image(tabBarItems[index].image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .top)
                            
                            if (index + 1 != tabSelection) {
                                Text(tabBarItems[index].title)
                                    .font(.workSans(.semibold, 11))
                                    .foregroundColor(.lettering)
                            }
                            else {
                                ZStack{
                                    Rectangle()
                                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                        .frame(width: CGFloat(tabBarItems[index].title.count) * 3 + 25, height: 13)
                                        .foregroundColor(.tabHighlight)
                                        .matchedGeometryEffect(id: "SelectedTabId", in: animationNamespace)
                                    
                                    Text(tabBarItems[index].title)
                                        .font(.workSans(.semibold, 11))
                                        .foregroundColor(.tabHighlightLettering)
                                    
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

