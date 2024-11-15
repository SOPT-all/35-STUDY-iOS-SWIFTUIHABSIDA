//
//  CustomTabView.swift
//  songyeogyeongSU
//
//  Created by 송여경 on 11/10/24.
//

import SwiftUI

struct CustomTabView: View {
  var body: some View {
    TabView {
      CalculatorView()
        .tabItem {
          Image(systemName: "1.square.fill")
          Text("계산기")
        }
      GridView()
        .tabItem {
          Image(systemName: "2.square.fill")
          Text("Second")
        }
      Text("3")
        .tabItem {
          Image(systemName: "3.square.fill")
          Text("Third")
        }
        .badge(10)
    }
    .font(.headline)
  }
}

#Preview {
  CustomTabView()
}
