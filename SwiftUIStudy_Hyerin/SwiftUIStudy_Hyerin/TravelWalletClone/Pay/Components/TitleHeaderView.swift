//
//  TitleHeaderView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct TitleHeaderView: View {
    
    var body: some View {
        HStack(alignment: .center) {
            HStack(spacing: 14) {
                Text("홈")
                    .font(.SUITFont(weight: .bold, size: 22))
                    .foregroundStyle(.black)
                Text("소셜페이")
                    .font(.SUITFont(weight: .bold, size: 22))
                    .foregroundStyle(Color(hex: "BDBDBD"))
            }
            Spacer()
            HStack(spacing: 20) {
                Image(.iconQR)
                    .resizable()
                    .frame(width: 18, height: 18)
                Image(.iconAlert)
                    .resizable()
                    .frame(width: 19, height: 20.06)
            }
        }
    }
}
