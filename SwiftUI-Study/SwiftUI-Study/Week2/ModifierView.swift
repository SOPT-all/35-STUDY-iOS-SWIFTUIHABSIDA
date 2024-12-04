//
//  ModifierView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 11/10/24.
//

import SwiftUI

struct ModifierView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text("텍스트 안녕")
                .font(.largeTitle)
                .padding()
                .customHelloStyle()
            
            Button(action: {
                print("하이")
            }) {
                Text("버튼 안녕")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .customHelloStyle()
            }
        }
        .padding()
    }
}

#Preview {
    ModifierView()
}
