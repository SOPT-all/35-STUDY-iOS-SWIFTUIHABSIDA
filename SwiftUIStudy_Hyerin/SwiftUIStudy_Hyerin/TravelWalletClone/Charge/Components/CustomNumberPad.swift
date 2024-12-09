//
//  CustomNumberPad.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/9/24.
//

import SwiftUI

struct CustomNumberPad: View {
    @Binding var inputAmount: String
    
    let buttonLabels = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "00", "0", "-1"]
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(buttonLabels, id: \.self) { label in
                Button(action: {
                    switch label {
                    case "-1":
                        if !inputAmount.isEmpty {
                            inputAmount = String(inputAmount.dropLast())
                        }
                    case "00", "0":
                        if !inputAmount.isEmpty {
                            inputAmount += label
                        }
                    default:
                        inputAmount += label
                    }
                }) {
                    switch label {
                    case "-1":
                        Image(.iconBackspace)
                    default:
                        Text(label)
                            .font(.SUITFont(weight: .semiBold, size: 20))
                            .frame(height: 50)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                }
            }
        }
        .padding(.bottom, 10)
    }
}
