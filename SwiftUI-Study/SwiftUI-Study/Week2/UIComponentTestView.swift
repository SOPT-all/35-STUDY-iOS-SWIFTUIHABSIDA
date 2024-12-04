//
//  UIComponentTestView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 11/10/24.
//

import SwiftUI

struct UIComponentTestView: View {
    @State private var userInput: String = ""
    @State private var count: Int = 0
    @State private var items = ["안녕1", "안녕2", "안녕3", "안녕4", "안녕5"]
    @State private var selectedHi = "안녕1"
    
    
    var body: some View {
        VStack {
            Text("안녕하세요 Text입니다")
                .font(.title) // 텍스트 크기, 스타일
                .foregroundColor(.white) // 글씨 색상
                .bold() // 두껍게
                .italic() // 기울임 체
                .lineLimit(1) // 라인 수 제한
                .padding()  // 텍스트 주위 여백
                .background(Color.green) // 배경색
            
            TextField("이름을 입력하세요", text: $userInput) // State, Binding으로 입력 텍스트 바인딩
                .padding(10)
                .textFieldStyle(RoundedBorderTextFieldStyle()) // 텍스트필드 스타일
                .frame(width: 300) // 크기
            
            Label {
                Text("Airpods Pro")
                    .foregroundColor(Color.blue)
            } icon : {
                Image(systemName: "airpodspro")
                    .foregroundColor(Color.blue)
            }
            
            Image(systemName: "star.fill")
                .resizable() // 이미지 크기 조정 가능
                .scaledToFit() // 이미지 비율 지정
                .frame(width: 100, height: 100) // 크기
                .foregroundColor(.yellow) // 배경
                .clipShape(Circle()) // 모양 변경
            
            TabView {
                Text("전화 페이지입니다")
                    .tabItem { // 각 탭 아이템 설정
                        Label("전화", systemImage: "phone.fill")
                    }
                Text("설정 페이지입니다")
                    .tabItem {
                        Label("설정", systemImage: "gear")
                    }
            }
            
            VStack {
                Text("\(count) 번")
                    .font(.title)
                
                Button(action: {
                    count += 1
                }) {
                    Text("눌러보3")
                        .padding()
                        .background(Color.blue) // 버튼 배경
                        .foregroundColor(.white) // 버튼 글씨 색
                        .cornerRadius(8) // 모서리
                }
            }
            
            VStack {
                Picker("안녕 고르기", selection: $selectedHi) {
                    ForEach(items, id: \.self) {
                        Text($0)
                    }
                }
                Text(selectedHi)
            }
            .padding()
        }
        
    }
}

#Preview {
    UIComponentTestView()
}
