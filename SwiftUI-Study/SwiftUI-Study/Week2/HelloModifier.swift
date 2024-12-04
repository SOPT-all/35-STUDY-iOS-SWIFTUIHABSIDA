//
//  HelloModifier.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 11/10/24.
//

import SwiftUI

struct HelloModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()                                    
            .background(Color.green.opacity(0.2))
            .cornerRadius(15)
            .shadow(radius: 10)
            .padding(5)
            .overlay(
                Text("📌")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.6))
                    .cornerRadius(10)
                    .offset(y: -50)
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .animation(.spring(), value: 2)
    }
}

extension View {
    func customHelloStyle() -> some View {
        self.modifier(HelloModifier())
    }
}
