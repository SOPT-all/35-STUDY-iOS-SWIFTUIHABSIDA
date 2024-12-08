//
//  HighlightTextModifier.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct HighlightTextModifier: ViewModifier {
    let wholeText: String
    let targetText: String
    let baseColor: Color
    let targetColor: Color
    
    func body(content: Content) -> some View {
        if let range = wholeText.range(of: targetText) {
            let beforeRange = wholeText[..<range.lowerBound]
            let highlightedRange = wholeText[range]
            let afterRange = wholeText[range.upperBound...]
            
            return Text(beforeRange)
                .foregroundColor(baseColor)
            + Text(highlightedRange)
                .foregroundColor(targetColor)
            + Text(afterRange)
                .foregroundColor(baseColor)
        } else {
            return Text(wholeText)
                .foregroundColor(baseColor)
        }
    }
}
