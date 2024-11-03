//
//  ContentView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 11/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
                .foregroundStyle(.pink)
            Text("스유 스터디 개큰 시작 ㅋㅋ")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
