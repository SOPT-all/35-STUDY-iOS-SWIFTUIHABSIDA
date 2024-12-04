//
//  CustomNavigationBarModifier.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/4/24.
//

import SwiftUI

struct CustomNavigationBarModifier<L, R>: ViewModifier where L: View, R: View {
    let leftView: (() -> L)?
    let rightView: (() -> R)?
    
    init(leftView: (() -> L)? = nil, rightView: (() -> R)? = nil) {
        self.leftView = leftView
        self.rightView = rightView
    }
    
    func body(content: Content) -> some View {
        VStack {
            HStack {
                self.leftView?()

                Spacer()
                
                self.rightView?()
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 15)
            .background(Color(hex: "EEEEF0"))
            
            content
            
            Spacer()
            
            .navigationBarHidden(true)
        }
    }
    
}
