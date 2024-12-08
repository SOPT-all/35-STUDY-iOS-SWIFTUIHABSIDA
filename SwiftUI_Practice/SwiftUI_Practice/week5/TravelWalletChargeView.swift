//
//  TravelWalletChargeView.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 12/5/24.
//

import SwiftUI

struct TravelWalletChargeView: View {
    
    @State private var inputUSD = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 63) {
            VStack(alignment: .leading, spacing: 18) {
                HStack {
                    Image("USA")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("미국 USD")
                        .font(.custom("SUIT-Bold", size: 15))
                }
                TextField("충전할 금액을 입력해주세요.", text: $inputUSD)
                    .font(.custom("SUIT-Bold", size: 18))
            }
            .padding(.horizontal, 16)
            .padding(.top, 53)
            
            VStack(alignment: .leading, spacing: 18) {
                HStack {
                    Image("Korea")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("대한민국 KRW")
                        .font(.custom("SUIT-Bold", size: 15))
                }
                Text("0원")
                    .font(.custom("SUIT-Bold", size: 18))
                Text("1달러 = 1,400원")
                    .font(.custom("SUIT-Medium", size: 10))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }
        Button(action: {}) {
            Text("충전하기")
                .font(.custom("SUIT-Bold", size: 18))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.top, 18)
                .background(.twBlue)
        }
    }
    
}


