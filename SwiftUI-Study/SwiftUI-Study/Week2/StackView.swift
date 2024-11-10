//
//  StackView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 11/10/24.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "photo.fill")
                    .resizable()
                    .frame(width: 110, height: 90)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text("섬세한 I들은 핑계고")
                        .font(.headline)
                        .truncationMode(.tail)
                    
                    HStack(spacing: 20) {
                        Text("뜬뜬")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("조회수 100회")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("1일 전")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Text("3회차 방문인 공 관원이 저와 구면인 손님 한 명과 함께 왔는데요. 저랑 쌥쌥이까지 해서 4명이 모두 내향적이더라고요? 그래도 다들 방에서 떠들어...")
                        .font(.body)
                        .lineLimit(2)
                        .foregroundColor(.secondary)
                }
            }
            HStack {
                Image(systemName: "photo.fill")
                    .resizable()
                    .frame(width: 110, height: 90)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text("섬세한 I들은 핑계고")
                        .font(.headline)
                        .truncationMode(.tail)
                    
                    HStack(spacing: 20) {
                        Text("뜬뜬")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("조회수 100회")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("1일 전")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    
                    Text("3회차 방문인 공 관원이 저와 구면인 손님 한 명과 함께 왔는데요. 저랑 쌥쌥이까지 해서 4명이 모두 내향적이더라고요? 그래도 다들 방에서 떠들어...")
                        .font(.body)
                        .lineLimit(2)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
    }
}

#Preview {
    StackView()
}
