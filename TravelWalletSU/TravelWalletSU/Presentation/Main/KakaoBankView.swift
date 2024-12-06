//
//  KakaoBankView.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/6/24.
//

import SwiftUI

struct KakaoBankView: View {
    
    // MARK: - Hierarchy
    
    var body: some View {
        HStack(spacing: 13) {
            kakaoBankIcon
            kakaoBankText
            Spacer()
            deleteButton
        }
        .padding(.vertical, 17)
        .padding(.leading, 21)
        .padding(.trailing, 25)
        .background(Color(hex: "FFFFFF"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 16)
    }
    
    // MARK: - Components
    
    private var kakaoBankIcon: some View {
        Image(.kakaoBankIcon)
            .resizable()
            .frame(width: 29, height: 29)
    }
    
    private var kakaoBankText: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("카카오뱅크 이용중이시라면")
                .font(.system(size: 10, weight: .medium))
                .foregroundStyle(Color(hex: "000000"))
            
            Text("달러박스를 연동해보세요!")
                .font(.system(size: 13, weight: .bold))
                .foregroundStyle(Color(hex: "000000"))
        }
    }
    
    private var deleteButton: some View {
        Button {
            print("x 버튼")
        } label: {
            Image(.xIcon)
                .resizable()
                .frame(width: 24, height: 24)
        }
    }
}

#Preview {
    KakaoBankView()
}
