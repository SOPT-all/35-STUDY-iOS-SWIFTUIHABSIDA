//
//  NavigationExampleView.swift
//  sangwook
//
//  Created by 우상욱 on 12/8/24.
//

import SwiftUI
import Combine

struct NavigationExampleView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DestinationView()) {
                    Text("Go to Destination")
                }.navigationTitle("Example")
            }
        }
    }
}


struct DestinationView: View {
    var body: some View {
        Text("Destination View")
            .navigationTitle("Destination")
    }
}

#Preview {
    NavigationExampleView()
}
