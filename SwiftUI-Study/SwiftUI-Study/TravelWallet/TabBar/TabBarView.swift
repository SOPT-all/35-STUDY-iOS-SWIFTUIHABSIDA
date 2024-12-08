//
//  TabBarView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/8/24.
//

import SwiftUI


struct TabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabContentView(selectedTab: selectedTab)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex: "#F4F6F8"))
            
            HStack {
                TabBarItem(iconName: .pay, label: "페이", isSelected: selectedTab == 0)
                    .onTapGesture { selectedTab = 0 }
                
                TabBarItem(iconName: .dollar, label: "송금", isSelected: selectedTab == 1)
                    .onTapGesture { selectedTab = 1 }
                
                TabBarItem(iconName: .bag, label: "직구", isSelected: selectedTab == 2)
                    .onTapGesture { selectedTab = 2 }
                
                TabBarItem(iconName: .travel, label: "여행", isSelected: selectedTab == 3)
                    .onTapGesture { selectedTab = 3 }
                
                TabBarItem(iconName: .person, label: "마이", isSelected: selectedTab == 4)
                    .onTapGesture { selectedTab = 4 }
            }
            .ignoresSafeArea()
            .padding(.horizontal, 10)
            .padding(.top, 10)
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -2)
        }
    }
}


struct TabBarItem: View {
    var iconName: UIImage
    var label: String
    var isSelected: Bool
    
    var body: some View {
        VStack {
            Image(uiImage: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(isSelected ? Color(hex: "#0BAEFF") : Color(hex: "#BDBDBD"))
            Text(label)
                .font(Font.system(size: 10, weight: .medium))
                .foregroundColor(isSelected ? Color(hex: "#0BAEFF") : Color(hex: "#BDBDBD"))
        }
        .frame(maxWidth: .infinity)
    }
}


#Preview {
    TabBarView()
}
