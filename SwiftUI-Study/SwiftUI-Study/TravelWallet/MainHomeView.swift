//
//  MainHomeView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct MainHomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 22) {
                HeaderView()
                CardView()
                MyWalletView()
                AdvertisingBannerView()
                MenuScrollView()
            }
            .background(Color(hex:"#F4F6F8"))
        }
    }
}

#Preview {
    MainHomeView()
}
