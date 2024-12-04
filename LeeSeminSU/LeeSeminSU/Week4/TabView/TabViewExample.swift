//
//  TabViewExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView {
            Text("HOMESWEETHOME")
                .tabItem {
                    Label("홈", systemImage: "house.fill")
                }
            
            Text("SETTING")
                .tabItem {
                    Label("설정", systemImage: "gearshape.fill")
                }
        }
    }
}

#Preview {
    TabViewExample()
}
