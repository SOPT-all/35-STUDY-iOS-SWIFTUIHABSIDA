//
//  GridView.swift
//  songyeogyeongSU
//
//  Created by 송여경 on 11/15/24.
//

import SwiftUI

struct GridView: View {
  
  @State private var selectedSymbol: String? = nil
  
  private let symbols = [
    "heart.fill",
    "star.fill",
    "moon.fill",
    "cloud.fill",
    "sun.max.fill",
    "umbrella.fill",
    "clock.fill",
    "book.fill",
    "leaf.fill",
    "sun.haze.fill"
  ]
  
  private let columns = [
    GridItem(.flexible(minimum: 100)),
    GridItem(.flexible(minimum: 100)),
    GridItem(.flexible(minimum: 100)),
    GridItem(.flexible(minimum: 100)),
    GridItem(.flexible(minimum: 100))
  ]
  
  var body: some View {
    VStack {
      ScrollView(.horizontal, showsIndicators: false) {
        VStack {
          LazyVGrid(columns: columns, spacing: 20) {
            ForEach(symbols, id: \.self) { symbol in
              Image(systemName: symbol)
                .font(.system(size: 30))
                .frame(width: 80, height: 80)
                .background(
                  selectedSymbol == symbol ?
                  Color.blue.opacity(0.2) :
                    Color.gray.opacity(0.1)
                )
                .foregroundColor(
                  selectedSymbol == symbol ? .blue : .primary
                )
                .cornerRadius(50)
                .onTapGesture {
                  self.selectedSymbol = symbol
                }
            }
          }
        }
        
        .padding()
      }
      
      Spacer()
        .frame(height: 30)
      
      if let symbol = selectedSymbol {
        VStack {
          Text("Today:")
            .font(.headline)
          Image(systemName: symbol)
            .font(.system(size: 50))
            .foregroundColor(.blue)
            .frame(width: 100, height: 100)
            .background(Color.blue.opacity(0.1))
            .cornerRadius(50)
        }
        .padding()
      }
      
      Spacer()
    }
  }
}

struct GridView_Previews: PreviewProvider {
  static var previews: some View {
    GridView()
  }
}
