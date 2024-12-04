//
//  SpacerAndPaddingView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 11/10/24.
//

import SwiftUI

struct SpacerAndPaddingView: View {
    var body: some View {
        VStack {
            // 1) Spacer
            Text("1. Spacer")
                .font(.title)
                .padding(.bottom, 10)
            
            HStack {
                Text("왼쪽")
                Spacer()
                Text("오른쪽")
            }
            .border(Color.red)
            .padding(.bottom, 20)
            
            // 2) Padding
            Text("2. Padding")
                .font(.title)
                .padding(.bottom, 10)
            
            HStack {
                Text("왼쪽")
                Spacer()
                Text("오른쪽")
            }
            .padding()
            .border(Color.orange)
            .padding(.bottom, 30)
            
            // 3. 한 쪽에만 Padding
            Text("3. 아래, 우측에만 Padding")
                .font(.title)
                .padding(.bottom, 10)
            
            HStack {
                Text("왼쪽")
                Spacer()
                Text("오른쪽")
            }
            .padding([.bottom, .trailing], 20)
            .border(Color.green)
            .padding(.bottom, 20)
        }
        .padding()
    }
}

#Preview {
    SpacerAndPaddingView()
}
