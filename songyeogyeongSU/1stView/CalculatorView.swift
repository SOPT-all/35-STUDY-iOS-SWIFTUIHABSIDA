//
//  CalculatorView.swift
//  songyeogyeongSU
//
//  Created by 송여경 on 11/11/24.
//

import SwiftUI

struct CalculatorView: View {
  @State private var finalNumber: String = "0"
  private let buttonNumber: [[String]] = [
    ["C","/","%","$"],
    ["7","8","9","X"],
    ["4","5","6","-"],
    ["1","2","3","+"],
    ["0","0",",","="]
  ]
  
  var body: some View {
    ZStack {
      Color.black.ignoresSafeArea()
      VStack {
        Spacer()
        HStack {
          Spacer()
          Text(finalNumber)
            .padding()
            .foregroundColor(.white)
            .font(.system(size: 73))
        }
        ForEach(buttonNumber, id: \.self) { line in
          HStack {
            ForEach(line, id: \.self) { row in
              Button {
                if finalNumber == "0" {
                  finalNumber = "7"
                } else {
                  finalNumber += "7"
                }
              } label: {
                Text(row)
                  .frame(width: 80, height: 80)
                  .background(.gray)
                  .cornerRadius(40)
                  .foregroundColor(.white)
                  .font(.system(size: 33))
              }
            }
          }
        }
      }
    }
  }
}
