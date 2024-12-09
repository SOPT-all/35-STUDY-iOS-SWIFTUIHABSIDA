//
//  View+.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUICore

extension Text {
    func highlight(wholeText: String, targetText: String, baseColor: Color, targetColor: Color) -> some View {
        self.modifier(HighlightTextModifier(wholeText: wholeText, targetText: targetText, baseColor: baseColor, targetColor: targetColor))
    }
}
