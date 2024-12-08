//
//  AdView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct AdView: View {
    
    var body: some View {
        ZStack {
            Color(.white)
            HStack {
                Image(.imgKakaobankicon)
                    .resizable()
                    .frame(width: 29, height: 29)
                verticalStackText
                Spacer()
                Button {
                    print("닫기 버튼 눌림")
                } label: {
                    Image(.iconClose)
                }
            }
            .padding(.horizontal, 21)
        }
        .cornerRadius(15)
        .padding(.horizontal, 16)
    }
    
    private var verticalStackText: some View {
        VStack(alignment: .leading, spacing: 6.59) {
            Text("카카오뱅크 이용중이시라면")
                .font(.SUITFont(weight: .medium, size: 10))
                .foregroundStyle(.black)
            Text("달러박스를 연동해보세요!")
                .font(.SUITFont(weight: .bold, size: 13))
                .foregroundStyle(.black)
        }
        .padding(.leading, 16)
    }
}
