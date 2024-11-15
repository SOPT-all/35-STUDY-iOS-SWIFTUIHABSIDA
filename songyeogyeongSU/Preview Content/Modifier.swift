//
//  Modifier.swift
//  songyeogyeongSU
//
//  Created by 송여경 on 11/10/24.
//
import SwiftUI

struct ModifierExampleView: View {
  var body: some View {
    VStack(spacing: 20) {
      Text("Styled Text")
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(Color.blue)
      
      Button("Rounded Button") {
        print("Button Pressed")
      }
      .padding()
      .background(Color.green)
      .cornerRadius(15)
      
      Image(systemName: "star.fill")
        .resizable()
        .scaledToFit()
        .frame(width: 100, height: 100)
        .foregroundColor(.yellow)
        .background(Color.black)
        .cornerRadius(50)
    }
    .padding()
  }
}    

#Preview {
  ModifierExampleView()
}
