//
//  EnvironmentObjectExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

// 테마 색상 모델
class ThemeModel: ObservableObject {
    @Published var themeColor: Color = .black
    
    func changeThemeColor(to color: Color) {
        themeColor = color
    }
}

struct EnvironmentObjectExample: View {
    @EnvironmentObject var themeModel: ThemeModel // 전역 상태로 테마 색상 사용
    
    var body: some View {
        VStack {
            Text("현재 색상")
                .font(.title)
                .foregroundColor(themeModel.themeColor) // 테마 색상 적용
                .padding()
            
            Button(action: {
                themeModel.changeThemeColor(to: .red)
            }) {
                Text("Red Theme")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            Button(action: {
                themeModel.changeThemeColor(to: .orange)
            }) {
                Text("Orange Theme")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            Button(action: {
                themeModel.changeThemeColor(to: .yellow)
            }) {
                Text("Yellow Theme")
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            Button(action: {
                themeModel.changeThemeColor(to: .green)
            }) {
                Text("Green Theme")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            Button(action: {
                themeModel.changeThemeColor(to: .blue)
            }) {
                Text("Blue Theme")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
}

struct EnvironmentObjectContentView: View {
    // @StateObject로 테마 모델 생성
    @StateObject private var themeModel = ThemeModel()
    
    var body: some View {
        // 테마 색상을 여러 뷰에서 사용 가능하도록 전달
        EnvironmentObjectExample()
            .environmentObject(themeModel)
    }
}

#Preview {
    EnvironmentObjectContentView()
}
