//
//  Example1View.swift
//  sangwook
//
//  Created by 우상욱 on 12/8/24.
//

import SwiftUI
import Combine

class CounterObservable: ObservableObject {
    @Published var count = 0
}

struct ObservableObjectExampleView: View {
    @StateObject var model = CounterObservable()
    
    var body: some View {
        VStack {
            countText(count: $model.count)
            Button("Increment") {
                model.count += 1
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
    ObservableObjectExampleView()
}
