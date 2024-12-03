//
//  week3View.swift
//  SeungWonSU
//
//  Created by 김승원 on 11/17/24.
//

import SwiftUI

struct week3View: View {
    let data = Array(1...30).map { "Minji \($0)"}
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let rows = [
        GridItem(.fixed(100)),
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows, spacing: 10) {
                        ForEach(data, id: \.self) { i in
                            VStack(spacing: 0) {
                                Image(.minji)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                    .frame(width: 100, height: 100)
                                Text(i)
                            }
                        }
                    }
                }

                
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(data, id: \.self) { i in
                        VStack(spacing: 10) {
                            Image(.minji)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(15)
                            Text(i)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .scrollIndicators(.hidden)
        }
    }
    
    
}

#Preview {
    week3View()
}
