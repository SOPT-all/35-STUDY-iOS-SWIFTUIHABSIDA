//
//  MyWalletView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct MyWalletView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
            
            VStack(spacing: 20) {
                HStack {
                    HStack(spacing: 9) {
                        Text("내 지갑")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.black)
                        Image(.info)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                    }
                    
                    Spacer()
                    
                    HStack(spacing: -5) {
                        Text("이용내역")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(.black)
                        Image(.arrowUp)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                }
                .padding(.horizontal, 16)
                
                Spacer()
                
                Text("아직 충전된 외화가 없습니다.")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color(hex: "#616161"))
                
                Spacer()
                
                Button(action: {
                    print("충전하기")
                }) {
                    Text("충전하기")
                        .frame(maxWidth: .infinity, minHeight: 52)
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                        .background(Color(hex: "#0BAEFF"))
                        .cornerRadius(11)
                }
                .padding(.horizontal, 16)
            }
            .padding(.vertical, 16)
        }
        .frame(height: 228)
        .padding(.horizontal, 16)
    }
}

#Preview {
    MyWalletView()
}
