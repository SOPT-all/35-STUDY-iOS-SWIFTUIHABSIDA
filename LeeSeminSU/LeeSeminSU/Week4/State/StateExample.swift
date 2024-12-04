//
//  StateExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

struct StateExample: View {
    @State private var count = 327
    
    var body: some View {
        VStack (spacing: 30) {
            Text("Count: \(count)")
                .font(.largeTitle)
                .padding()
            Button("작아져라") {
                count -= 1
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    StateExample()
}
