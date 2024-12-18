//
//  SwiftUI_PracticeApp.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 10/30/24.
//

import SwiftUI

@main
struct SwiftUI_PracticeApp: App {
    @State private var inputAmount: String = ""
    @State private var isCharged: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ModalPractice()
        }
    }
}

