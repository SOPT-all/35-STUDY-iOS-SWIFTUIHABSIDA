//
//  ContentView.swift
//  songyeogyeongSU
//
//  Created by 송여경 on 11/3/24.
//

import SwiftUI

struct ContentView: View {
  @State private var text: String = ""
  
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("나 빠름 ㅋㅋ")
        .font(.title)
        .foregroundColor(.blue)
      
      ZStack(alignment: .topLeading) {
        Rectangle()
          .fill(Color.green)
          .frame(width: 100, height: 30)
        
        Image(systemName: "figure.run")
          .resizable()
          .scaledToFit()
          .frame(width: 200, height: 200)
        
        Rectangle()
          .fill(Color.orange)
          .frame(width: 80, height: 20)
        
        Rectangle()
          .fill(Color.red)
          .frame(width: 60, height: 10)
      }
      .padding()
      
      Button("점프") {
        print("ㅁㅁ")
      }
      
      TextField("내 속도는?", text: $text)
        .padding()
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
