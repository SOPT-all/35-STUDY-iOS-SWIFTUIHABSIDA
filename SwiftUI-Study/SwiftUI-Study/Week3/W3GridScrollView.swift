//
//  W3GridScrollView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 11/17/24.
//

import SwiftUI

struct W3GridScrollView: View {
    let verticalItems = Array(1...15)
    let horizontalItems = Array(16...30)
    
    let verticalColumns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let horizontalRows = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                LazyVGrid(
                    columns: verticalColumns,
                    spacing: 20,
                    pinnedViews: [.sectionHeaders]
                ) {
                    Section(
                        header: Text("1. VGrid (수직 그리드)")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .font(.headline)
                    ) {
                        ForEach(verticalItems, id: \.self) { item in
                            gridItemView(for: item, color: Color.cyan)
                        }
                    }
                }
                .padding()
                
                Divider()
                    .padding(.vertical, 10)
                
                ScrollView(.horizontal) {
                    LazyHGrid(
                        rows: horizontalRows,
                        spacing: 20,
                        pinnedViews: [.sectionHeaders]
                    ) {
                        Section(
                            header: Text("2. HGrid (수평 그리드)")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.indigo)
                                .foregroundColor(.white)
                                .font(.headline)
                        ) {
                            ForEach(horizontalItems, id: \.self) { item in
                                gridItemView(for: item, color: Color.mint)
                                    .frame(width: 100)
                            }
                        }
                    }
                    .padding()
                }
                .frame(height: 400)
            }
        }
    }
    
    func gridItemView(for item: Int, color: Color) -> some View {
        Text("번호 : \(item)")
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}

#Preview {
    W3GridScrollView()
}
