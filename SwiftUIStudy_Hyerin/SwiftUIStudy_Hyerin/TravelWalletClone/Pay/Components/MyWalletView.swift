//
//  MyWalletView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct MyWalletView: View {
    
    var body: some View {
        ZStack {
            Color(.white)
            VStack {
                header
                    .padding(.horizontal, 16)
                forexList
                Button {
                    print("충전하기 버튼 눌림")
                } label: {
                    ZStack {
                        Color(hex: "0BAEFF")
                        Text("충전하기")
                            .font(.SUITFont(weight: .bold, size: 15))
                            .foregroundStyle(.white)
                    }
                }
                .cornerRadius(11)
                .padding(.horizontal, 20)
                .frame(height: 52)
            }
            .padding(.vertical, 25)
        }
        .cornerRadius(15)
        .padding(.horizontal, 16)
    }
    
    private var header: some View {
        HStack {
            HStack(spacing: 9) {
                Text("내 지갑")
                    .font(.SUITFont(weight: .semiBold, size: 18))
                    .foregroundStyle(.black)
                Image(.iconInfo)
                    .resizable()
                    .frame(width: 14, height: 14)
            }
            Spacer()
            Button {
                print("이용 내역 버튼 눌림")
            } label: {
                HStack(spacing: -5) {
                    Text("이용내역")
                        .font(.SUITFont(weight: .medium, size: 15))
                        .foregroundStyle(.black)
                    Image(.iconArrow)
                }
            }
        }
    }
    
    private var forexList: some View {
        VStack {
            Spacer()
            Text("충전된 외화가 없습니다.")
                .font(.SUITFont(weight: .medium, size: 13))
                .foregroundStyle(Color(hex: "616161"))
            Spacer()
        }
    }
}
