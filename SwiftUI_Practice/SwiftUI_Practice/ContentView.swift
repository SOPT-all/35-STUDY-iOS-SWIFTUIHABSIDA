//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 10/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("안녕하세요")
            .foregroundStyle(.white)
            .font(.largeTitle)
            .frame(maxWidth:.infinity)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
    }

}

#Preview {
    ContentView()
}
