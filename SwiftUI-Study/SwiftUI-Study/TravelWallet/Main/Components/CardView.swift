//
//  CardView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(hex: "#6FE8B7"), location: 0.00),
                            Gradient.Stop(color: Color(hex: "#35DAE3"), location: 1.00),
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(height: 76)
            
            HStack(spacing: 11) {
                ZStack {
                    Circle()
                        .fill(Color(hex: "#51CFB7"))
                        .frame(width: 44, height: 44)
                    
                    Image(.card)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 20)
                }
                
                VStack(alignment: .leading, spacing: 7) {
                    Text("드디어 나왔다!")
                        .font(Font.system(size: 13, weight: .medium))
                        .foregroundColor(Color(hex: "#616161"))
                    
                    (
                        Text("트래블월렛 ")
                            .font(Font.system(size: 16, weight: .bold))
                            .foregroundColor(.black)
                        +
                        Text("플래티늄 ")
                            .font(Font.system(size: 16, weight: .bold))
                            .foregroundColor(Color(hex: "#0079FF"))
                        +
                        Text("카드")
                            .font(Font.system(size: 16, weight: .bold))
                            .foregroundColor(.black)
                    )
                }
                
                Spacer()
                
                Image(.arrowUp)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            .padding(.horizontal, 12)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CardView()
}
