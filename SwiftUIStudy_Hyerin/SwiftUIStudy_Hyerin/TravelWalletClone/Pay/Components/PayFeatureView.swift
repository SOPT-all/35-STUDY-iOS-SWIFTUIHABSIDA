//
//  PayFeatureView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct PayFeatureView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 7) {
                FeatureView(iconImage: .imgN, subText: "결제부터", featureText: "N빵하기")
                    .padding(.leading, 16)
                FeatureView(iconImage: .imgPaperAirplane, subText: "친구에게", featureText: "송금하기")
                FeatureView(iconImage: .imgForex, subText: "외화간", featureText: "송금하기")
                    .padding(.trailing, 16)
            }
        }
        .scrollIndicators(.hidden)
    }
}
