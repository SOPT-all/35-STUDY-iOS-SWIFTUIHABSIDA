//
//  ScrollView.swift
//  SOPT-35-SwiftUI
//
//  Created by 이수민 on 11/24/24.
//

import SwiftUI

struct ScrollContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<20) { index in
                    Text("항목 \(index)")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrollContentView()
}
