//
//  PayView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct PayView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 22) {
                TitleHeaderView()
                    .padding(.top, 5)
                    .padding(.bottom, 13)
                PlatinumCardView()
                    .frame(height: 76)
                MyWalletView()
                    .frame(height: 228)
                AdView()
                    .frame(height: 66)
                PayFeatureView()
            }
            .padding(.horizontal, 16)
        }
        .background(Color(hex: "F4F6F8"))
    }
}

#Preview {
    PayView()
}
