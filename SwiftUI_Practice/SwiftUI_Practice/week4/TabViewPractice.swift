//
//  TabViewPravtice.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 12/8/24.
//

import SwiftUI

struct TabViewPravtice : View {
  var body: some View {
    TabView {
      Text("The First Tab")
        .tabItem {
          Image(systemName: "1.square.fill")
          Text("First")
        }
      Text("Second Tab")
        .tabItem {
          Image(systemName: "2.square.fill")
          Text("Second")
        }
      Text("Third Tab")
        .tabItem {
          Image(systemName: "3.square.fill")
          Text("Third")
        }
    }
    .font(.headline)
  }
       
}

#Preview {
    TabViewPravtice()
}
