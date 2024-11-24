//
//  ContentView.swift
//  sangwook
//
//  Created by 우상욱 on 11/3/24.
//

import SwiftUI

struct ContentView: View {
    let items = (1...50).map { "Item \($0)" }
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // LazyVGrid: 수직으로 그리드 생성
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue.opacity(0.7))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                }
                .padding()

                // LazyHGrid: 수평으로 그리드 생성
                ScrollView(.horizontal, showsIndicators: true) {
                    LazyHGrid(rows: columns, spacing: 16) {
                        ForEach(items, id: \.self) { item in
                            Text(item)
                                .font(.headline)
                                .frame(width: 100, height: 100)
                                .background(Color.green.opacity(0.7))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                }

                // 일반 VStack 섹션
                VStack(spacing: 10) {
                    ForEach(items.prefix(10), id: \.self) { item in
                        Text(item)
                            .font(.body)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange.opacity(0.8))
                            .cornerRadius(8)
                            .foregroundColor(.white)
                    }
                }
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
