//
//  Charge.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/8/24.
//

import SwiftUI

struct Charge: View {
    @State private var usdMoney: String = ""
    @State private var krwMoney: String = "0원"
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("USA")
                Text("미국 USD")
                    .font(.system(size: 15, weight: .semibold))
            }
            .padding(.leading)
            .padding(.bottom)
            .padding(.top, 70)
            
            TextField("충전할 금액을 입력해주세요.", text: $usdMoney)
                .keyboardType(.decimalPad)
                .padding(.leading)
                .padding(.bottom, 40)
                .onChange(of: usdMoney) { newValue in
                    if let usd = Double(newValue) {
                        let krw = usd * 1400
                        krwMoney = "\(Int(krw))원"
                    } else {
                        krwMoney = "0원"
                    }
                }
            
            HStack {
                Image("KOREA")
                Text("대한한국 KRW")
                    .font(.system(size: 15, weight: .semibold))
            }
            .padding(.leading)
            .padding(.bottom)
            
            Text(krwMoney)
                .font(.system(size: 18, weight: .semibold))
                .padding(.leading)
                .padding(.bottom, 20)
            
            Text("1달러 = 1,400원")
                .font(.system(size: 10))
                .padding(.leading)
                .foregroundColor(Color(hex: "#757575"))
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("충전하기")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 81)
                    .background(Color(hex: "#0BAEFF"))
            }
            
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    Charge()
}
