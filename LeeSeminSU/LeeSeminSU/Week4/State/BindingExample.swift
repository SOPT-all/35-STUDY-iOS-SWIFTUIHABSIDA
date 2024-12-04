//
//  BindingExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

struct BindingExample: View {
    @State private var sliderValue: Double = 50
    
    var body: some View {
        VStack {
            SliderView(value: $sliderValue)
            Text("Value: \(Int(sliderValue))")
                .font(.headline)
        }
        .padding()
    }
}

struct SliderView: View {
    @Binding var value: Double
    
    var body: some View {
        Slider(value: $value, in: 0...100)
            .padding()
    }
}

#Preview {
    BindingExample()
}
