//
//  PayView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct PayView: View {
    
    @State var isAdBoxShown: Bool = true
    
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
                if isAdBoxShown {
                    AdView(isAdBoxShown: $isAdBoxShown)
                        .frame(height: 66)
                        .transition(.opacity)
                }
                PayFeatureView()
            }
        }
        .background(Color(hex: "F4F6F8"))
    }
}
