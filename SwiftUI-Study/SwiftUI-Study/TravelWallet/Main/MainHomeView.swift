//
//  MainHomeView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct MainHomeView: View {
    @State private var isAdvertisingBannerHidden = false
    @State private var balance: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "#F4F6F8")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 22) {
                        HeaderView()
                        CardView()
                        MyWalletView(balance: $balance)
                        AdvertisingBannerView(isHidden: $isAdvertisingBannerHidden)
                        MenuScrollView()
                    }
                }
            }
        }
    }
}
