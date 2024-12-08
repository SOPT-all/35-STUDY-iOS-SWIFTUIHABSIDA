//
//  NavigationViewPractice.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 12/8/24.
//

import SwiftUI

struct NavigationViewPractice: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Detail View1")) {
                    Text("Link1")
                }
                NavigationLink(destination: Text("Detail View2")) {
                    Text("Link2")
                }
                NavigationLink(destination: Text("Detail View3")) {
                    Text("Link3")
                }
            }
            .navigationTitle("민서공이의 실습")
        }
    }
}

#Preview {
    NavigationViewPractice()
}
