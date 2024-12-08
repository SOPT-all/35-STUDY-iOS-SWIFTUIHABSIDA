//
//  MenuScrollView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct MenuCardData: Hashable {
    var icon: UIImage
    var description: String
    var menuTitle: String
}

let menuCardDataSample: [MenuCardData] = [
    MenuCardData(icon: .n, description: "결제부터", menuTitle: "N빵하기"),
    MenuCardData(icon: .remit, description: "친구에게", menuTitle: "송금하기"),
    MenuCardData(icon: .unit, description: "외화간", menuTitle: "환전하기")
]

struct MenuScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 7){
                ForEach(menuCardDataSample.indices, id: \.self){index in
                    let data = menuCardDataSample[index]
                    MenuCardView(icon: data.icon, description: data.description, menuTitle: data.menuTitle)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

struct MenuCardView: View {
    var icon: UIImage
    var description: String
    var menuTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(uiImage: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
            Spacer()
                .frame(height: 21)
            
            Text(description)
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(Color(hex: "#616161"))
            Spacer()
                .frame(height: 6)
            Text(menuTitle)
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.black)
        }
        .padding(.trailing, 23)
        .frame(width: 131, height: 131)
        .background(Color.white)
        .cornerRadius(15)
    }
}

#Preview {
    MenuScrollView()
}
