import SwiftUI

struct ChargeView: View {
    @Binding var balance: Int
    @State private var userInputAmount = ""
    private let exchangeRate = 1400
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image(.usa).resizable().scaledToFit()
                    .frame(width: 25, height: 25)
                Text("미국 USD")
                    .font(.system(size: 15, weight: .bold))
            }.padding(.top, 53)
            
            TextField("충전할 금액을 입력해주세요.", text: $userInputAmount)
                .font(.system(size: 18, weight: .bold))
                .keyboardType(.decimalPad)
                .padding(.vertical, 19)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 18) {
                HStack {
                    Image(.kor).resizable().scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("한국 KRW")
                        .font(.system(size: 15, weight: .bold))
                }
                
                let convertedAmount = (Int(userInputAmount) ?? 0) * exchangeRate
                Text("\(convertedAmount)원")
                    .font(.system(size: 18, weight: .bold))
                
                Text("1달러 = \(exchangeRate)원")
                    .font(.system(size: 10, weight: .medium))
                    .foregroundColor(.gray)
            }.padding(.top, 50)
            
            Spacer()
        }
        .padding(.horizontal, 16)
        
        Button(action: {
            if let amount = Int(userInputAmount) {
                balance += amount
            }
            dismiss()
        }) {
            Text("완료")
                .font(.system(size: 18, weight: .bold))
                .frame(maxWidth: .infinity, minHeight: 60)
                .foregroundColor(.white)
                .background(Color(hex: "#0BAEFF"))
        }
    }
}

#Preview {
    @Previewable @State var previewBalance = 100
    ChargeView(balance: $previewBalance)
}
