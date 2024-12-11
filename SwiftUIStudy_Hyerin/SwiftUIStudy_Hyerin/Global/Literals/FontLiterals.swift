//
//  FontLiterals.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUICore

enum fontWeight {
    case medium
    case semiBold
    case bold
}

extension Font {
    static func SUITFont(weight: fontWeight, size: CGFloat) -> Font {
        switch weight {
        case .medium:
            return .custom("SUIT-Medium", size: size)
        case .semiBold:
            return .custom("SUIT-SemiBold", size: size)
        case .bold:
            return .custom("SUIT-Bold", size: size)
        }
    }
}
