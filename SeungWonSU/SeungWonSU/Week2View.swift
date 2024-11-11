//
//  Week2View.swift
//  SeungWonSU
//
//  Created by 김승원 on 11/8/24.
//

import SwiftUI

struct Week2View: View {
    @State private var text = ""
    
    var body: some View {
        VStack {
            ZStack {
                Image(.minji)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                Image(.speechBubble)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 130)
                    .offset(x: 100, y: -80)
                Text(text)
                    .lineLimit(3)
                    .offset(x: 100, y: -95)
                    .frame(width: 160, height: 130)
            }
            
            TextField("입력", text: $text)
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .border(Color.black, width: 1)
                .padding(.horizontal, 30)
            
            Button {
                print("버튼 눌림!")
            } label: {
                Label("버튼", systemImage: "globe")
            }
            .buttonStyle(CustomButtonStyle())
        }
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.bold)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0) // 누를 때 약간 축소
    }
}

#Preview {
    Week2View()
}
