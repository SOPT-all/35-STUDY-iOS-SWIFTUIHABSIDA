//
//  FirstNavigationViewExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

struct FirstNavigationViewExample: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("첫 번째 화면")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: SecondNavigationViewExample()) {
                    Text("두 번째 화면으로 이동")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationBarTitle("첫 번째 화면", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                print("검색 버튼 클릭")
            }) {
                Image(systemName: "magnifyingglass")
            }, trailing: Button(action: {
                print("공유 버튼 클릭")
            }) {
                Image(systemName: "square.and.arrow.up")
            })
        }
    }
}

#Preview {
    FirstNavigationViewExample()
}
