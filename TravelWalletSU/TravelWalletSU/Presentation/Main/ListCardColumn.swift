//
//  ListCardView.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/7/24.
//

import SwiftUI

public enum ListCardType {
    case n
    case send
    case exchange
    
    func icon() -> some View {
        switch self {
        case .n:
            Image(.nIcon)
                .resizable()
                .frame(width: 23, height: 23)
        case .send:
            Image(.sendIcon)
                .resizable()
                .frame(width: 23, height: 23)
        case .exchange:
            Image(.exchangeIcon)
                .resizable()
                .frame(width: 23, height: 23)
        }
    }
}

struct ListCardColumn: View {
    
    // MARK: - Properties
    
    var listCardType: ListCardType
    
    // MARK: - Hierarchy
    
    var body: some View {
        
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 22) {
                listCardType.icon()
                text
            }
            .padding(.leading, 23)
            
            Spacer()
        }
        .frame(width: 131, height: 131)
        .background(Color(hex: "FFFFFF"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    // MARK: - Components
    
    private var text: some View {
        VStack(alignment: .leading, spacing: 6) {
            switch listCardType {
            case .n:
                Text("결제부터")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundStyle(Color(hex: "616161"))
                Text("N빵하기")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(Color(hex: "000000"))
                
            case .send:
                Text("친구에게")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundStyle(Color(hex: "616161"))
                Text("송금하기")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(Color(hex: "000000"))
                
            case .exchange:
                Text("외화간")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundStyle(Color(hex: "616161"))
                Text("환전하기")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(Color(hex: "000000"))
            }
        }
    }
    
    
    
}

#Preview {
    ListCardColumn(listCardType: .exchange)
}
