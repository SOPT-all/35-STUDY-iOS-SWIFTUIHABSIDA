//
//  GridView.swift
//  SOPT-35-SwiftUI
//
//  Created by 이수민 on 11/24/24.
//

import SwiftUI

struct GridContentView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<9) { index in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(height: 100)
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridContentView()
}

