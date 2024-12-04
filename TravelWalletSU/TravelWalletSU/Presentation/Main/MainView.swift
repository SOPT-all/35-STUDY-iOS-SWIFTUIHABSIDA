//
//  MainView.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/4/24.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Hierarchy
    
    var body: some View {
        Text("dh®")
        .customNavigationBar {
            leftNavigationBarItem
            
        } rightView: {
            rightNavigationBarItem
        }

    }
    
    var leftNavigationBarItem: some View {
        HStack(spacing: 14) {
            Text("홈")
                .font(.system(size: 22, weight: .bold))
                .foregroundStyle(Color(hex: "000000"))
            Text("소셜페이")
                .font(.system(size: 22, weight: .bold))
                .foregroundStyle(Color(hex: "BDBDBD"))
        }
    }
    
    var rightNavigationBarItem: some View {
        HStack(spacing: 20) {
            Button {
                print("qr Tapped")
            } label: {
                Image(.qrIcon)
                    .resizable()
                    .frame(width: 18, height: 18)
            }
            
            Button {
                print("ring Tapped")
            } label: {
                Image(.ringIcon)
                    .resizable()
                    .frame(width: 19, height: 20)
            }
        }
    }
}

#Preview {
    MainView()
}
