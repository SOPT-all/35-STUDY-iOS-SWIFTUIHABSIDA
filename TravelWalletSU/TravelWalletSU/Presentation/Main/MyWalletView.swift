//
//  MyWalletView.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/6/24.
//

import SwiftUI

struct MyWalletView: View {
    
    // MARK: - Hierarchy
    
    var body: some View {
        VStack(spacing: 0) {
            myWalletHeader
            
            chargedForeignCurrencyView
            
            chargeButton
        }
        .padding(.vertical, 24)
        .padding(.horizontal, 16)
        .background(Color(hex: "FFFFFF"))
        .clipShape(RoundedRectangle(cornerRadius: 11))
    }
    
    // MARK: - Components
    
    private var myWalletHeader: some View {
        HStack(spacing: 9) {
            Text("내 지갑")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(Color(hex: "000000"))
            
            Image(.informationIcon)
                .resizable()
                .frame(width: 14, height: 14)
            
            Spacer()
            
            Button {
                print("이용 내역 버튼")
            } label: {
                HStack(spacing: -3) {
                    Text("이용내역")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundStyle(Color(hex: "000000"))
                    
                    Image(.chevronRIght)
                        .resizable()
                        .frame(width: 25, height: 25)
                }
            }
        }
    }
    
    private var chargeButton: some View {
        Button {
            print("충전하기 버튼")
        } label: {
            HStack(spacing: 0) {
                Spacer()
                
                Text("충전하기")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundStyle(Color(hex: "FFFFFF"))
                    .padding(.vertical, 17)
                
                Spacer()
            }
            .background(Color(hex: "0BAEFF"))
            .clipShape(RoundedRectangle(cornerRadius: 11))
            .padding(.horizontal, 4)
        }
    }
    
    private var notChargedView: some View {
        Text("아직 충전된 외화가 없습니다.")
            .font(.system(size: 13, weight: .medium))
            .foregroundStyle(Color(hex: "616161"))
            .frame(height: 104)
    }
    
    private var chargedForeignCurrencyView: some View {
        VStack(spacing: 0) {
            HStack(spacing: 10) {
                Image(.usdIcon)
                    .resizable()
                    .frame(width: 25, height: 25)
                
                Text("미국")
                    .font(.system(size: 15, weight: .semibold))
                
                Spacer()
                
                Text("$800") // 바인딩 필요
                    .font(.system(size: 15, weight: .semibold))
            }
            .padding(.leading, 22)
            .padding(.trailing, 25)
            
            Spacer()
        }
        .padding(.top, 19)
        .frame(height: 104)
    }
    
}

#Preview {
    MyWalletView()
}
