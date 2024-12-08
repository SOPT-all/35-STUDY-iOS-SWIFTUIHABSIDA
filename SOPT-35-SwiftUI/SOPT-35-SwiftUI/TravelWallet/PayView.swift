//
//  MainView.swift
//  SOPT-35-SwiftUI
//
//  Created by 이수민 on 12/7/24.
//

import SwiftUI

struct PayView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                // Header
                HStack {
                    Text("홈")
                        .font(.title2)
                        .bold()
                    Text("소설페이")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.gray)
                    Spacer()
                    HStack(spacing: 16) {
                        Image(.qr)
                        Image(.bell)
                    }
                }
                .padding()
                
                ScrollView {
                    VStack(spacing: 22) {
                        // Card
                        HStack {
                            Image(.card)
                            VStack(alignment: .leading) {
                                Text("드디어 나왔다 !")
                                    .foregroundColor(.black)
                                Text("트래블월렛 플래티늄 카드")
                                    .bold()
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .frame(height: 76)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(
                                    LinearGradient(
                                        colors: [
                                            Color("Mint1"),
                                            Color("Mint2")
                                        ],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .padding(.horizontal)
                        )
                        
                       // Wallet
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                Text("내 지갑")
                                Image(.info)
                                Spacer()
                                Text("이용내역 >")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Text("아직 충전된 외화가 없습니다.")
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                            Button(action: {}) {
                                Text("충전하기")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            }
                        }
                        .padding()
                        .frame(height: 228)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .padding(.horizontal)
                        )
                       
                        // Banner
                        HStack {
                            Image(.kb)
                            VStack(alignment: .leading) {
                                Text("카카오뱅크를 이용중이시라면")
                                    .font(.system(size: 10))
                                    .foregroundColor(.black)
                                Text("딜리버스를 연동해보세요!")
                                    .bold()
                                    .font(.system(size: 13))
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "xmark")
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding()
                        .frame(height: 66)
                        .cornerRadius(15)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .padding(.horizontal)
                        )
                        
                        // Button
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                QuickActionButton(icon: .b1, label: "N빵하기", sublabel: "결제부터")
                                QuickActionButton(icon: .b2, label: "송금하기", sublabel: "친구에게")
                                QuickActionButton(icon: .b3, label: "환전하기", sublabel: "외화간")
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .background(Color(UIColor.systemGray6))
        }
    }
}

struct QuickActionButton: View {
    let icon: ImageResource
    let label: String
    let sublabel: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(icon)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.blue)
            Text(sublabel)
                .font(.caption)
                .foregroundColor(.gray)
            Text(label)
                .font(.caption)
        }
        .frame(width: 131, height: 131)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
        )
    }
}

#Preview {
    PayView()
}
