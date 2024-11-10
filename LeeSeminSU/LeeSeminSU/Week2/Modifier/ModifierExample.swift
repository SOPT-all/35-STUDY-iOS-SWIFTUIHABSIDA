//
//  ModifierExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 11/10/24.
//

import SwiftUI

struct ModifierExample: View {
    @State private var buttonText: String = "담곰이 좋아요 버튼"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("담곰이 소개서")
                .font(.title2) // 폰트 크기 설정
                .bold() // 텍스트를 굵게 설정
                .padding()
                .border(.black) // 테두리 설정
            
            Image("vdamgome")
                .resizable()
                .scaledToFit() // 뷰에 맞게 크기를 조정
                .frame(width: 150, height: 150) // 프레임의 너비와 높이를 제한
                .shadow(color: .black.opacity(0.2), radius: 10) // 그림자 설정
                .padding(20)
            
            Text("담곰이는 귀엽습니다")
                .font(.title3) // 폰트 크기 설정
                .padding(20)
            
            Button(action: {
                buttonText = "감사합니다"
            }) {
                Text(buttonText)
                    .font(.title3) // 폰트 크기 설정
                    .padding()
                    .background(.blue) // 배경 색상 설정
                    .foregroundColor(.white) // 텍스트 색상 설정
                    .cornerRadius(10) // 모서리 둥글게 설정
            }
            .padding(20)
        }
        .padding()
    }
}
