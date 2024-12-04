//
//  CustomNavigationBarModifier.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/4/24.
//

import SwiftUI

struct CustomNavigationBarModifier<C, L, R>: ViewModifier where C: View, L: View, R: View {
    let centerView: (() -> C)?
    let leftView: (() -> L)?
    let rightView: (() -> R)?
    
    init(center: (() -> C)? = nil, leftView: (() -> L)? = nil, rightView: (() -> R)? = nil) {
        self.centerView = center
        self.leftView = leftView
        self.rightView = rightView
    }
    
    func body(content: Content) -> some View {
        VStack {
            ZStack {
                HStack {
                    self.leftView?()
                    
                    Spacer()
                    
                    self.rightView?()
                        .frame(height: 44)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 14)
                    
                    HStack {
                        Spacer()
                        
                        self.centerView?()
                        
                        Spacer()
                    }
                }
                .background(.red)
                .ignoresSafeArea(.all, edges: .top)
                
                content
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
    
}
