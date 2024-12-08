//
//  PlatinumCardView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct PlatinumCardView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: "6FE8B7"), Color(hex: "35DAE3")]),
                           startPoint: .leading, endPoint: .trailing)
            HStack {
                Image(.imgPlatinumCard)
                    .resizable()
                    .frame(width: 44, height: 44)
                verticalStackText
                Spacer()
                Image(.iconArrow)
            }
            .padding(.horizontal, 16)
            
        }
        .cornerRadius(15)
        .padding(.horizontal, 16)
    }
    
    private var verticalStackText: some View {
        VStack(alignment: .leading, spacing: 7) {
            Text("드디어 나왔다!")
                .font(.SUITFont(weight: .medium, size: 13))
                .foregroundStyle(Color(hex: "616161"))
            Text("")
                .highlight(wholeText: "트래블월렛 플래티늄 카드", targetText: "플래티늄", baseColor: .black, targetColor: Color(hex: "0079FF"))
                .font(.SUITFont(weight: .medium, size: 13))
                .foregroundStyle(Color(hex: "616161"))
        }
        .padding(.leading, 11)
    }
}
