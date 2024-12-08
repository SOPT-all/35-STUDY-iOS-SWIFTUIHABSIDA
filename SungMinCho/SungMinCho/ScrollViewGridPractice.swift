//
//  ScrollViewGridPractice.swift
//  SungMinCho
//
//  Created by 조성민 on 11/15/24.
//

import SwiftUI

struct ScrollViewGridPractice: View {
    
    @State var itemsSelected: [Bool] = Array(1...12).map({ _ in false })
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(itemsSelected.indices, id: \.self) { index in
                    VStack {
                        Text("Item \(index + 1)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(itemsSelected[index] ? Color.red.opacity(0.7) : Color.blue.opacity(0.7))
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .font(.headline)
                        
                        Button(
                            action: {
                                itemsSelected[index].toggle()
                            }
                        ) {
                            ZStack {
                                Color.yellow
                                Text("Button \(index + 1)")
                            }
                            .frame(width: 100, height: 40)
                            .cornerRadius(8)
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
        .frame(width: 400, height: 400)
        .padding()
        .background(Color.gray.opacity(0.2))
    }
}

#Preview {
    ScrollViewGridPractice()
}
