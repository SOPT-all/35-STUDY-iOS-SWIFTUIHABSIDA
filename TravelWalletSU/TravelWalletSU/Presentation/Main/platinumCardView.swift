//
//  platinumCardView.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/6/24.
//

import SwiftUI

struct platinumCardView: View {
    
    // MARK: - Hierarchy
    
    var body: some View {
        HStack(spacing: 11) {
            platinumCardImage
            platinumCardText
            Spacer()
            chevronRightImage
            
        }
        .padding(16)
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color(hex: "6FE8B7"),
                        Color(hex: "35DAE3")
                    ]
                ),
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    // MARK: - Components
    
    private var platinumCardImage: some View {
        Image(.platinumCardIcon)
            .resizable()
            .frame(width: 44, height: 44)
    }
    
    private var platinumCardText: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("드디어 나왔다!")
                .font(.system(size: 13, weight: .medium))
                .foregroundStyle(Color(hex: "616161"))
            
            multipleColoredText
        }
    }
    
    private var multipleColoredText: some View {
        let fullText = "트래블월렛 플래티늄 카드"
        var attributedString = AttributedString(fullText)
        
        if let platinumRange = attributedString.range(of: "플래티늄") {
            attributedString[platinumRange].foregroundColor = Color(hex: "0079FF")
        }
        
        return Text(attributedString)
            .font(.system(size: 16, weight: .bold))
    }
    
    private var chevronRightImage: some View {
        Image(.chevronRIght)
            .resizable()
            .frame(width: 24, height: 24)
    }
    
}

#Preview {
    platinumCardView()
}
