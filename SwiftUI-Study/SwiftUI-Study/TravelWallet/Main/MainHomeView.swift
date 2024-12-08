//
//  MainHomeView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct MainHomeView: View {
    @State private var isAdvertisingBannerHidden = false
    @StateObject private var balance = BalanceModel()

    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "#F4F6F8")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 22) {
                        HeaderView()
                        CardView()
                        MyWalletView(balanceModel: balance)
                        AdvertisingBannerView(isHidden: $isAdvertisingBannerHidden)
                        MenuScrollView()
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
