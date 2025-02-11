//
//  ChargeView.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/7/24.
//

import SwiftUI

struct ChargeView: View {
    
    // MARK: - Properties
    @Binding var isChargeViewPresented: Bool
    @Binding var isMoneyCharged: Bool
    @Binding var chargedAmount: String
    
    @State private var chargeMoney: String = ""
    
    private let exchangeRate: Double = 1400.0
    private var krwAmount: String {
        if let usdAmount = Double(chargeMoney) {
            let krw = usdAmount * exchangeRate
            
            // NumberFormatter를 사용하여 1000단위로 쉼표 추가
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.groupingSeparator = ","
            formatter.locale = Locale(identifier: "ko_KR")
            
            return formatter.string(from: NSNumber(value: krw)) ?? "0"
        } else {
            return "0"
        }
    }
    
    // MARK: - Hierarchy
    
    var body: some View {
        VStack(spacing: 63) {
            usdTextFieldView
            krwTextView
            Spacer()
            doneButton
        }
    }
    
    // MARK: - Components
    
    private var usdTextFieldView: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 19) {
                HStack(spacing: 10) {
                    Image(.usdIcon)
                        .resizable()
                        .frame(width: 25, height: 25)
                    
                    Text("미국 USD")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundStyle(Color(hex: "000000"))
                }
                
                TextField("충전할 금액을 입력해주세요.", text: $chargeMoney)
                    .font(.system(size: 18, weight: .bold))
                    .keyboardType(.decimalPad)
                    .onChange(of: chargeMoney) { _, newValue in
                        if newValue.range(of: "[^0-9]", options: .regularExpression) != nil {
                            chargeMoney = String(newValue.dropLast())
                        }
                    }
            }
            
            Spacer()
            
        }
        .padding(.top, 53)
        .padding(.horizontal, 17)
    }
    
    private var krwTextView: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 19) {
                VStack(alignment: .leading, spacing: 19) {
                    HStack(spacing: 10) {
                        Image(.krwIcon)
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Text("대한민국 KRW")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundStyle(Color(hex: "000000"))
                    }
                }
                
                Text("\(krwAmount)원")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(Color(hex: "000000"))
                
                Text("1달러 = 1,400원")
                    .font(.system(size: 10.71, weight: .medium))
                    .foregroundStyle(Color(hex: "757575"))
            }
            
            Spacer()
            
        }
        .padding(.horizontal, 17)
    }
    
    private var doneButton: some View {
        Button {
            print("완료 버튼")
            isChargeViewPresented = false
            isMoneyCharged = true
            chargedAmount = chargeMoney
        } label: {
            HStack(spacing: 0) {
                Spacer()
                Text("완료")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(Color(hex: "FFFFFF"))
                    .padding(.top, 18)
                    .padding(.bottom, 7)
                Spacer()
            }
        }
        .background(Color(hex: "0BAEFF"))
    }
}

//#Preview {
//    ChargeView()
//}
