//
//  View+.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/5/24.
//

import SwiftUI

extension View {
    func customNavigationBar<L, R>(
        leftView: @escaping (() -> L),
        rightView: @escaping (() -> R)
    ) -> some View where L: View, R: View {
        modifier(CustomNavigationBarModifier(leftView: leftView, rightView: rightView))
    }
}
