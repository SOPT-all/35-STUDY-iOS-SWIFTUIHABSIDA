//
//  ScrollViewEx.swift
//  week3
//
//  Created by  정지원 on 11/24/24.
//

import SwiftUI

struct ScrollViewEx: View {
    let colors: [Color] = [.black, .blue, .brown, .cyan, .gray, .indigo, .mint, .yellow, .orange, .purple]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 50, height: 400)
                        .foregroundColor(color)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ScrollViewEx()
}
