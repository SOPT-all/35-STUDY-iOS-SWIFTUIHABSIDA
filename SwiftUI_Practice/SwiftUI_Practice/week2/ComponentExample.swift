//
//  ComponentExample.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 11/9/24.
//

import SwiftUI

struct ComponentExample: View {
    var body: some View {
        Text("민서공이의 스유 스터디 큭큭")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            .lineLimit(1)
            .padding()
    }
}

#Preview {
    ComponentExample()
}

