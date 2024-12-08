//
//  ChargeView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct ChargeView: View {
    
    @State var inputAmount: String = ""
    
    var body: some View {
        VStack {
            usdView
            krwView
            Spacer()
            if !inputAmount.isEmpty && Int(inputAmount) != 0 {
                Button {
                    print("충전하기 버튼 눌림")
                } label: {
                    ZStack {
                        Color(hex: "0BAEFF")
                        Text("충전하기")
                            .font(.SUITFont(weight: .bold, size: 18))
                            .foregroundStyle(.white)
                    }
                    .frame(height: 60)
                }
            }
            CustomNumberPad(inputAmount: $inputAmount)
        }
    }
    
    private var usdView: some View {
        VStack(alignment: .leading, spacing: 19) {
            HStack(spacing: 10) {
                Image(.imgUsa)
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("미국 USD")
                    .font(.SUITFont(weight: .bold, size: 15))
                
            }
            HStack(spacing: 0) {
                if inputAmount.isEmpty || Int(inputAmount) == 0 {
                    Text("충전할 금액을 입력해주세요.")
                        .font(.SUITFont(weight: .bold, size: 18))
                        .foregroundStyle(Color(hex: "BDBDBD"))
                } else {
                    Text("\(inputAmountWithComma)달러")
                        .font(.SUITFont(weight: .bold, size: 18))
                        .foregroundStyle(.black)
                }
                Spacer()
                if !inputAmount.isEmpty && Int(inputAmount) != 0 {
                    Button {
                        print("지움 버튼 눌림")
                        inputAmount = ""
                    } label: {
                        Image(.iconRemove)
                    }
                }
            }
                
        }
        .padding(.top, 53)
        .padding(.horizontal, 17)
    }

    private var krwView: some View {
        VStack(alignment: .leading, spacing: 19) {
            HStack(spacing: 10) {
                Image(.imgKorea)
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("대한민국 KRW")
                    .font(.SUITFont(weight: .bold, size: 15))
                Spacer()
            }
            Text("\(exchangedKRWAmount)원")
                .font(.SUITFont(weight: .bold, size: 18))
                .foregroundStyle(.black)
            Text("1달러 = 1,400원")
                .font(.SUITFont(weight: .medium, size: 10))
                .foregroundStyle(Color(hex: "757575"))
        }
        .padding(.top, 63)
        .padding(.leading, 17)
    }
    
    private var inputAmountWithComma: String {
        let AmountIntValue = Int(inputAmount)
        
        let numberFormatter: NumberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter.string(for: AmountIntValue)!
    }
    
    private var exchangedKRWAmount: String {
        let KrwIntValue = (Int(inputAmount) ?? 0) * 1400
        
        let numberFormatter: NumberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter.string(for: KrwIntValue)!
    }
}

#Preview {
    ChargeView()
}

