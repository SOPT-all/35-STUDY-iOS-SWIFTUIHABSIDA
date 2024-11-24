//
//  ZStackView.swift
//  SOPT-35-SwiftUI
//
//  Created by 이수민 on 11/10/24.
//

import SwiftUI

struct ZStackView: View {
    @State private var isOverlayVisible = true
    
    var body: some View {
        VStack(spacing: 30) {
            // MARK: - 1. 기본적인 ZStack 사용
            Text("1. 기본 ZStack")
                .font(.headline)
            
            ZStack {
                // 가장 뒤에 위치
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
                
                // 중간에 위치
                Circle()
                    .fill(Color.red)
                    .frame(width: 80, height: 80)
                
                // 가장 앞에 위치
                Text("앞에 있는 텍스트")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            
            // MARK: - 2. alignment 속성 활용
            Text("2. ZStack Alignment")
                .font(.headline)
            
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 200, height: 100)
                
                Text("왼쪽 상단")
                    .padding(8)
                    .foregroundColor(.white)
            }
            
            // MARK: - 3. zIndex 활용
            Text("3. zIndex로 순서 제어")
                .font(.headline)
            
            ZStack {
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 150, height: 150)
                    .zIndex(3) // 가장 앞에 위치
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 120, height: 120)
                    .offset(x: 30, y: 30)
                    .zIndex(2)
                
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 90, height: 90)
                    .offset(x: 60, y: 60)
                    .zIndex(1)
            }
            
            // MARK: - 4. 조건부 오버레이
            Text("4. 조건부 오버레이")
                .font(.headline)
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
                
                if isOverlayVisible {
                    Text("오버레이 텍스트")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(5)
                }
                
                Button(action: {
                    withAnimation {
                        isOverlayVisible.toggle()
                    }
                }) {
                    Text(isOverlayVisible ? "오버레이 숨기기" : "오버레이 보이기")
                        .font(.caption)
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(5)
                }
                .offset(y: 30)
            }
        }
    }
}

#Preview {
    ZStackView()
}
