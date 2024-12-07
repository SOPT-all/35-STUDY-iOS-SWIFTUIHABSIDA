//
//  CalculatorView.swift
//  songyeogyeongSU
//
//  Created by 송여경 on 11/11/24.
//

import SwiftUI

enum ButtonType: String {
  case first, second, third, fourth, fifth, sixth, seventh, eighth, nineth, zero
  case dot, equal, plus, minus, multiply, dollar
  case percent, divide, clear
  
  var ButtonDisplayName: String {
    switch self {
    case .first:
      return "1"
    case .second:
      return "2"
    case .third:
      return "3"
    case .fourth:
      return "4"
    case .fifth:
      return "5"
    case .sixth:
      return "6"
    case .seventh:
      return "7"
    case .eighth:
      return "8"
    case .nineth:
      return "9"
    case .zero:
      return "0"
    case .dot:
      return "."
    case .equal:
      return "="
    case .plus:
      return "+"
    case .minus:
      return "-"
    case .multiply:
      return "*"
    case .dollar:
      return "$"
    case .percent:
      return "%"
    case .divide:
      return "/"
    case .clear:
      return "C"
    }
  }
  
  var backgroundColor: Color {
    switch self {
    case .first, .second, .third, .fourth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .dot:
      return Color("NumberButton")
    case .equal, .plus, .minus, .multiply, .dollar:
      return Color.orange
    case .percent, .divide, .clear:
      return Color.gray
    }
  }
}

struct CalculatorView: View {
  @State private var finalNumber: String = "0"
  
  private let buttonNumber: [[ButtonType]] = [
    [.clear, .divide, .percent, .dollar],
    [.seventh, .eighth, .nineth, .multiply],
    [.fourth, .fifth, .sixth, .minus],
    [.first, .second, .third, .plus],
    [.zero, .zero, .dot, .equal]
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
                Text(row.ButtonDisplayName)
                  .frame(width: 80, height: 80)
                  .background(row.backgroundColor)
                  .cornerRadius(40)
                  .foregroundColor(.white)
                  .font(.system(size: 33))
              }
            }
          }
        }
      }
      .padding(.bottom)
    }
  }
}
