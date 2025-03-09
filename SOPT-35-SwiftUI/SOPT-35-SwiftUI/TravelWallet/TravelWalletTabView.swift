//
//  MainView.swift
//  SOPT-35-SwiftUI
//
//  Created by 이수민 on 12/7/24.
//
import SwiftUI

struct TravelWalletTabView: View {
    var body: some View {
        TabView {
            PayView()
                .tabItem {
                    Image(.tab1)
                    Text("페이")
                }
            Text("송금")
                .tabItem {
                    Image(.tab2)
                    Text("송금")
                }
            Text("직구")
                .tabItem {
                    Image(.tab3)
                    Text("직구")
                }
            Text("여행")
                .tabItem {
                    Image(.tab4)
                    Text("여행")
                }
            Text("마이")
                .tabItem {
                    Image(.tab5)
                    Text("마이")
                }
        }
    }
}
