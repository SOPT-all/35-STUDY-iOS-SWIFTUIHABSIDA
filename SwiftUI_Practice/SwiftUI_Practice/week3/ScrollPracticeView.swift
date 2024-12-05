//
//  ScrollPracticeView.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 11/17/24.
//

import SwiftUI

struct ScrollPracticeView: View {
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(1...10, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red.opacity(0.3))
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("Item \(index)")
                                    .font(.headline)
                            )
                    }
                }
                .padding()
            }
        }
}


#Preview {
    ScrollPracticeView()
}



