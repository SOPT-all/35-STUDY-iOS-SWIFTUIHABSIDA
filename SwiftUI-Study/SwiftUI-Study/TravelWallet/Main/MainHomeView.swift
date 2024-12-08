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
            ZStack {
                Color(hex: "#F4F6F8")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 22) {
                        HeaderView()
                        CardView()
                        MyWalletView()
                        AdvertisingBannerView()
                        MenuScrollView()
                    }
                }
            }
        }
    }
}

#Preview {
    MainHomeView()
}
