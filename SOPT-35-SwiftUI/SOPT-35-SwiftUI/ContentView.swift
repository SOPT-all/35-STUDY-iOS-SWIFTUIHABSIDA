//
//  ContentView.swift
//  SOPT-35-SwiftUI
//
//  Created by 이수민 on 11/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var inputText = ""
    @State private var selectedTab = 0
    @State private var buttonText = "탭 해보세용"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // MARK: - UI Components
            VStack(spacing: 20) {
                Text("Text입니다")
                    .font(.title)
                    .bold()
                
                Image(systemName: "airplane.departure")
                    .font(.system(size: 50)) // 폰트로 이미지 사이즈 조정
                    .foregroundColor(.blue)
                
                TextField("텍스트를 입력하세요", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Label("라벨 예시", systemImage: "heart.fill")
                    .foregroundColor(.red)
                
                Button(action: {
                    buttonText = "탭 됨 !"
                }) {
                    Text(buttonText)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .tabItem {
                Image(systemName: "slider.horizontal.3")
                Text("컴포넌트")
            }
            .tag(1)
            
            // MARK: - Spacing and Padding
            VStack {
                Text("간격 = Spacing, 여백 = Padding")
                    .font(.headline)
                
                HStack {
                    Text("Spacer의 왼쪽")
                    Spacer() // Spacer
                    Text("Spacer의 오른쪽")
                }
                .padding() // 전체 패딩
                .background(Color.orange.opacity(0.2))
                
                Text("패딩 예시")
                    .padding(20) // 특정 값의 패딩
                    .background(Color.green.opacity(0.2))
                
                // 다양한 Modifier 예시
                Text("Modifier 스타일링")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.yellow.opacity(0.3))
                    .cornerRadius(15)
                    .shadow(radius: 5)
            }
            .tabItem {
                Image(systemName: "ruler")
                Text("여백")
            }
            .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
