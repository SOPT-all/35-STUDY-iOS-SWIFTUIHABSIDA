//
//  ContentView.swift
//  sangwook
//
//  Created by 우상욱 on 11/3/24.
//

import SwiftUI

struct StateExampleView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            countText(count: $count)
            Button("Increment") {
                count += 1
            }
        }
    }
    
    struct countText: View {
        @Binding var count: Int
        
        var body: some View {
            Text("Count: \(count)")
        }
    }
}

#Preview {
    StateExampleView()
}
