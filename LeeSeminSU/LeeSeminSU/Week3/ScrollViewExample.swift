//
//  ScrollViewExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 11/24/24.
//

import SwiftUI

struct ScrollViewExample: View {
    @State private var diaryText: String = "오늘 정말 재미있는 하루였다."
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                Text("일기장")
                    .font(.largeTitle)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(1...3, id: \.self) { index in
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 200)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(10)
                                .clipped()
                        }
                    }
                    .padding()
                }
                
                TextEditor(text: $diaryText)
                    .frame(height: 700)
                    .padding()
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.5)
                    )
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ScrollViewExample()
}

