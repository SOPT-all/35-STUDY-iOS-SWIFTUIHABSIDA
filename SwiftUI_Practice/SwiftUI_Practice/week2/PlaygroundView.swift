//
//  PlaygroundView.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 11/9/24.
//

import SwiftUI

struct PlaygroundView: View {
    var body: some View {
        ZStack {
            Color("gray10")
                .ignoresSafeArea()
            
            VStack {
                HeaderSection()
                TagSection()
                ButtonSection()
                FooterSection()
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
}

struct HeaderSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("sopt")
                    .resizable()
                    .frame(width: 90, height: 30)
                Spacer()
            }
            
            Text("김민서 님은\nSOPT와 9개월째")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
    }
}


struct TagSection: View {
    var body: some View {
        HStack {
            Text("35기 활동 중")
                .font(.headline)
                .padding(.horizontal, 10)
                .foregroundColor(.gray10)
                .frame(height: 35)
                .background(Color.soptOrange)
                .cornerRadius(50)
            Text("34")
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 35, height: 35)
                .background(.gray03)
                .cornerRadius(50)
            
            Spacer()
        }
    }
}

// 버튼 섹션
struct ButtonSection: View {
    var body: some View {
        VStack {
            createButton(title: "이력서를 쓰며 확인해야할 7가지", height: 80)
            
            HStack {
                createButton(title: "출석하기", height: 210)
                
                VStack {
                    createButton(title: "모임/스터디", height: 100)
                    createButton(title: "Playground", height: 100)
                }
            }
            
            HStack {
                createButton(title: "멤버", height: 100)
                createButton(title: "프로젝트", height: 100)
            }
        }
    }
}

struct FooterSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SOPT를 알차게 즐기고 싶다면?")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.top, 10)
            HStack {
                createButton(title: "콕 찌르기", height: 170)
                createButton(title: "SOPT-AMP!", height: 170)
            }
        }
    }
}

extension View {
    func createButton(title: String, height: CGFloat) -> some View {
        Button(action: {}) {
            Text(title)
                .padding()
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, maxHeight: height)
                .background(.gray09)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    PlaygroundView()
}
