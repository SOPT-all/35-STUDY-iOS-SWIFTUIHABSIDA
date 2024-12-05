//
//  GridPracticeView.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 11/17/24.
//

import SwiftUI

struct GridPracticeView: View {
    let items = Array(1...8)
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(items, id: \.self) { item in
                Text("\(item)")
                    .frame(width: 150, height: 150)
                    .background(Color.gray01)
                    .cornerRadius(8)
                    .foregroundColor(.gray03)
            }
        }
        .padding(.horizontal, 20)
    }
}


#Preview {
    GridPracticeView()
}


