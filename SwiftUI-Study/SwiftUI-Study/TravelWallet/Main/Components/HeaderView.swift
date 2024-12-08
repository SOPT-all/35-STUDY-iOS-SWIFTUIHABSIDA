//
//  HeaderView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            HStack(spacing: 14) {
                Text("홈")
                    .font(Font.system(size: 22, weight: .bold))
                    .foregroundColor(.black)
                
                Text("소셜페이")
                    .font(Font.system(size: 22, weight: .bold))
                    .foregroundColor(Color(hex: "#BDBDBD"))
            }

            Spacer()

            HStack(spacing: 20) {
                Image(.qr)
                    .resizable()
                    .frame(width: 18, height: 18)
                
                Image(.ring)
                    .resizable()
                    .frame(width: 18, height: 18)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
    }
}

#Preview {
    HeaderView()
}
