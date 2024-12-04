//
//  SecondNavigationViewExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

struct SecondNavigationViewExample: View {
    var body: some View {
        Text("두 번째 화면")
                    .font(.largeTitle)
                    .padding()
                    .navigationBarTitle("두 번째 화면", displayMode: .inline)
    }
}

#Preview {
    SecondNavigationViewExample()
}
