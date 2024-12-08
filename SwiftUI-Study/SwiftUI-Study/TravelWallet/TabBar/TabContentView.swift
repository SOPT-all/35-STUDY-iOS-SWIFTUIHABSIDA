//
//  TabContentView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/8/24.
//

import SwiftUI

struct TabContentView: View {
    var selectedTab: Int

    var body: some View {
        switch selectedTab {
        case 0:
            MainHomeView()
        case 1:
            Text("송금")
        case 2:
            Text("직구")
        case 3:
            Text("여행")
        case 4:
            Text("마이")
        default:
            Text("Error")
        }
    }
}
