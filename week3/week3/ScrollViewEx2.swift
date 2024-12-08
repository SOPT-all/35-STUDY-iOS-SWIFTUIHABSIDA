//
//  ScrollViewEx2.swift
//  week3
//
//  Created by  정지원 on 11/24/24.
//

import SwiftUI

struct ScrollViewEx2: View {
    let colors: [Color] = [.black, .blue, .brown, .cyan, .gray, .indigo, .mint, .yellow, .orange, .purple]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 100)
                        .foregroundColor(color)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrollViewEx2()
}
