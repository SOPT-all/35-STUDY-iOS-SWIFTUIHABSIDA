//
//  ContentView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 11/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        HStack {
//            Image(systemName: "heart.fill")
//            Text("안녕하세요")
//            Text("방어 먹고싶다")
//        }
//        VStack(alignment: .leading,
//               spacing: 20) {
//            Image(systemName: "heart.fill")
//            Text("안녕하세요")
//            Text("방어 먹고싶다")
//        }
        ZStack {
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
                .zIndex(1)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 150, height: 150)
                .offset(x: 40, y: 40)
        }
    }
}
