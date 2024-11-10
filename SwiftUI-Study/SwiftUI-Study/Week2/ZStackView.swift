//
//  ZStackView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 11/10/24.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(systemName: "photo.fill")
                .resizable()
                .frame(width: 110, height: 90)
                .cornerRadius(10)
            
            Text("56:05")
                .foregroundColor(.white)
                .padding(8)
                .background(Color.black.opacity(0.7))
                .cornerRadius(5)
        }
    }
}

#Preview {
    ZStackView()
}
