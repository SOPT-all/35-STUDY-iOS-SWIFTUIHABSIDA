//
//  ComponentPractice.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 11/10/24.
//

import SwiftUI

struct ComponentPractice: View {
    @State private var showText = false
    @State private var answer = "안경만두"
    @State private var inputName = ""
    @State private var result = false

    var body: some View {
        VStack {
            Text("QUIZ!!!")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .padding(.bottom, 20)
            Text("이 아이의 이름은 무엇일까요?")
                .fontWeight(.semibold)
                .font(.system(size: 20))
                .padding(.bottom, 30)
            Image("mandoo")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.bottom, 30)
            Button(action: {
                showText = true
            }) {
                Text("힌트 보기ㅋㅋ")
                    .font(.system(size: 15))
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            if showText {
                Text("4글자, @@을 쓴 @@")
                    .padding(.top, 20)
                    .font(.system(size: 15))
            }
            
            HStack {
                TextField("정답을 입력하시옹", text: $inputName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    if inputName == answer {
                        result = true
                    }
                }) {
                    Text("확인")
                    .font(.system(size: 12))
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .padding()
            }
            
            if result {
                Text("정답입니다!!!!")
                    .padding(.top, 20)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
            }
        }
    }
}

#Preview {
    ComponentPractice()
}
