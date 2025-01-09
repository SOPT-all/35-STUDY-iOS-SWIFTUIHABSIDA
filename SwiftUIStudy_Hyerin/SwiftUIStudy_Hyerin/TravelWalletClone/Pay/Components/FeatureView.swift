//
//  FeatureView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct FeatureView: View {
    let iconImage: ImageResource
    let subText: String
    let featureText: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color(.white)
            VStack(alignment: .leading) {
                Image(iconImage)
                    .resizable()
                    .frame(width: 23, height: 23)
                    .padding(.leading, 2)
                    .padding(.bottom, 22)
                Text(subText)
                    .font(.SUITFont(weight: .medium, size: 15))
                    .foregroundStyle(Color(hex: "616161"))
                Text(featureText)
                    .font(.SUITFont(weight: .semiBold, size: 15))
                    .foregroundStyle(.black)
            }
            .padding(.top, 23)
            .padding(.leading, 21)
            .padding(.bottom, 19)
        }
        .frame(width: 131, height: 131)
        .cornerRadius(15)
    }
}
