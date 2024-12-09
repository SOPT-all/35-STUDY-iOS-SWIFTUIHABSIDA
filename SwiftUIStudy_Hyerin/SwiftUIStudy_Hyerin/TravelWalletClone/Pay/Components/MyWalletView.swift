//
//  MyWalletView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct MyWalletView: View {
    
    @Binding var path: [String]
    @EnvironmentObject var totalAmountManager: TotalAmountManager
    
    var body: some View {
        ZStack {
            Color(.white)
            VStack {
                header
                    .padding(.horizontal, 16)
                if totalAmountManager.totalAmount == 0 {
                    emptyView
                } else {
                    ChargedView
                }
                Button {
                    print("충전하기 버튼 눌림")
                    path.append("ChargeView")
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
            HStack(spacing: -5) {
                Text("이용내역")
                    .font(.SUITFont(weight: .medium, size: 15))
                    .foregroundStyle(.black)
                Image(.iconArrow)
            }
        }
    }
    
    private var emptyView: some View {
        VStack {
            Spacer()
            Text("충전된 외화가 없습니다.")
                .font(.SUITFont(weight: .medium, size: 13))
                .foregroundStyle(Color(hex: "616161"))
            Spacer()
        }
    }
    
    private var ChargedView: some View {
        VStack {
            HStack {
                Image(.imgUsa)
                Text("미국")
                    .font(.SUITFont(weight: .semiBold, size: 15))
                    .foregroundStyle(.black)
                    .padding(.leading, 10)
                Spacer()
                Text("$\(totalAmountWithComma)")
                    .font(.SUITFont(weight: .semiBold, size: 15))
                    .foregroundStyle(.black)
            }
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
    
    private var totalAmountWithComma: String {
        let numberFormatter: NumberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter.string(for: totalAmountManager.totalAmount)!
    }
}
