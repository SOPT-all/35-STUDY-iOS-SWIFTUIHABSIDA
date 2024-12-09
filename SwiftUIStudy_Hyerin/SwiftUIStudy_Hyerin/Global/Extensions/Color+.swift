//
//  Color+.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUICore

extension Color {
    init(hex: String, opacity: Double = 1.0) {
        let hexCode: Int = Int(hex, radix: 16)!
        let red = Double((hexCode >> 16) & 0xff) / 255
        let green = Double((hexCode >> 8) & 0xff) / 255
        let blue = Double((hexCode >> 0) & 0xff) / 255

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
