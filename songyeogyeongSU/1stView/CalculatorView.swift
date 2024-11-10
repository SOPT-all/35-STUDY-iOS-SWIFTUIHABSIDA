//
//  CalculatorView.swift
//  songyeogyeongSU
//
//  Created by 송여경 on 11/11/24.
//

import SwiftUI

enum ButtonType: String {
  case first, second, third, fourth, fifth, sixth, seventh, eighth, nineth, zero
  case comma, equal, plus, minus, multiply, devide
  case percent, opposite, clear
}

struct CalculatorView: View {
  @State private var finalNumber: String = "0"
  
  private let buttonNumber: [[ButtonType]] = [
    [.clear, .opposite, .percent, .devide],
    [.seventh, .eighth, .nineth, .multiply],
    [.fourth, .fifth, .sixth, .minus],
    [.first, .second, .third, .plus],
    [.zero, .zero, .comma, .equal]
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
        HStack {
          Button {
            finalNumber = "0"
          } label: {
            Text("C")
              .frame(width: 80, height: 80)
              .background(.gray)
              .cornerRadius(40)
              .foregroundColor(.black)
              .font(.system(size: 33))
          }
          
          Text("/")
            .frame(width: 80, height: 80)
            .background(.gray)
            .cornerRadius(40)
            .foregroundColor(.white)
            .font(.system(size: 33))
          
          Text("%")
            .frame(width: 80, height: 80)
            .background(.gray)
            .cornerRadius(40)
            .foregroundColor(.white)
            .font(.system(size: 33))
          
          Text("$")
            .frame(width: 80, height: 80)
            .background(.gray)
            .cornerRadius(40)
            .foregroundColor(.white)
            .font(.system(size: 33))
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
                Text(row.rawValue)
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
