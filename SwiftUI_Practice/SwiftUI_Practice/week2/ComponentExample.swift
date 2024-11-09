//
//  ComponentExample.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 11/9/24.
//

import SwiftUI

struct ComponentExample: View {
    @State private var inputText: String = ""  // TextField에 입력된 텍스트를 저장할 변수

    var body: some View {
//        Text("민서공이의 스유 스터디 큭큭")
//            .font(.title)
//            .fontWeight(.semibold)
//            .foregroundColor(.blue)
//            .multilineTextAlignment(.center)
//            .lineLimit(1)
//            .padding()
//        TextField("텍스트를 입력하세요", text: $inputText)  // 텍스트 필드 (입력 받기)
//            .padding()  // 여백 추가
//            .background(Color(.gray01))  // 배경 색상
//            .cornerRadius(8)  // 모서리 둥글게
//            .frame(height: 50)  // 텍스트 필드의 높이 설정
//            .padding(.horizontal, 16)  // 수평 여백 16 추가
        Label("즐겨찾기 추가", systemImage: "star.fill")  // 텍스트 + Label
            .font(.title2)  // 폰트 크기 설정
            .foregroundColor(.orange)  // 텍스트 색상 설정
            .padding()  // 여백 추가
            .background(Color.yellow.opacity(0.3))  // 배경색 설정 - 반투명
            .cornerRadius(10)  // 둥근 모서리
    }
}

#Preview {
    ComponentExample()
}

