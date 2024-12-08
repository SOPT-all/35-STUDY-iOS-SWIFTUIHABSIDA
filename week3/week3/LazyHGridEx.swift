//
//  LazyHGridEx.swift
//  week3
//
//  Created by  정지원 on 11/24/24.
//

import SwiftUI

struct LazyHGridEx: View {
    var rows: [GridItem] = Array(repeating: .init(.fixed(50)), count: 1)
    let colors: [Color] = [.black, .blue, .brown, .cyan, .gray, .indigo, .mint, .yellow, .orange, .purple]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 10)
                        .cornerRadius(15)
                        .frame(width: 50, height: 400)
                        .foregroundColor(color)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    LazyHGridEx()
}
