//
//  MainHomeView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct MainHomeView: View {
    @State private var isAdvertisingBannerHidden = false
    
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
                        AdvertisingBannerView(isHidden: $isAdvertisingBannerHidden)
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
