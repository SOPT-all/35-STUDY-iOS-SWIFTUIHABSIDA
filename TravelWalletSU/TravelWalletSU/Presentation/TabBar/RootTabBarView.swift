//
//  RootTabBarView.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/4/24.
//

import SwiftUI

struct RootTabBarView: View {
    
    enum Tab: String {
        case pay = "페이"
        case remittance = "송금"
        case directPurchase = "직구"
        case travel = "여행"
        case myPage = "마이"
    }
    
    @State private var selected: Tab = .pay
    
    var body: some View {
        ZStack {
            TabView(selection: $selected) {
                NavigationStack {
                    MainView()
                }
                .tag(Tab.pay)
                
                NavigationStack {
                    Text("remittance")
                }
                .tag(Tab.remittance)
                
                NavigationStack {
                    Text("direct purchase")
                }
                .tag(Tab.directPurchase)
                
                NavigationStack {
                    Text("travel")
                }
                .tag(Tab.travel)
                
                NavigationStack {
                    Text("myPage")
                }
                .tag(Tab.myPage)
            }
            .toolbar(.hidden, for: .tabBar)
        }
        
        VStack {
            Spacer()
            tabBar
        }
    }
    
    // MARK: - TabBar
    
    var tabBar: some View {
        HStack {
            TabBarButton(selected: $selected, tab: .pay)
            Spacer()
            TabBarButton(selected: $selected, tab: .remittance)
            Spacer()
            TabBarButton(selected: $selected, tab: .directPurchase)
            Spacer()
            TabBarButton(selected: $selected, tab: .travel)
            Spacer()
            TabBarButton(selected: $selected, tab: .myPage)
        }
        .padding(.horizontal, 29)
        .padding(.top, 9)
        .ignoresSafeArea()
        .background(
            Color(hex: "FFFFFF")
                .ignoresSafeArea()
                .shadow(color: .black.opacity(0.3), radius: 7, x: 0, y: 5)
        )
    }
}

struct TabBarButton: View {
    
    @Binding var selected: RootTabBarView.Tab
    var tab: RootTabBarView.Tab

    var body: some View {
        switch tab {
        case .pay:
            Button {
                selected = .pay
            } label: {
                VStack(spacing: 8) {
                    Image(.payIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 13)
                    Text(tab.rawValue)
                        .font(.system(size: 10, weight: .medium))
                }
                .foregroundStyle(selected == .pay ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
            }
            
        case .remittance:
            Button {
                selected = .remittance
            } label: {
                VStack(spacing: 5) {
                    Image(.remittanceIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 19, height: 19)
                    Text(tab.rawValue)
                        .font(.system(size: 10, weight: .medium))
                }
                .foregroundStyle(selected == .remittance ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
            }
            
        case .directPurchase:
            Button {
                selected = .directPurchase
            } label: {
                VStack(spacing: 5) {
                    Image(.directPurchaseIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 18)
                    Text(tab.rawValue)
                        .font(.system(size: 10, weight: .medium))
                }
                .foregroundStyle(selected == .directPurchase ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
            }
            
        case .travel:
            Button {
                selected = .travel
            } label: {
                VStack(spacing: 5) {
                    Image(.travelIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 18)
                    Text(tab.rawValue)
                        .font(.system(size: 10, weight: .medium))
                }
                .foregroundStyle(selected == .travel ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
            }
            
        case .myPage:
            Button {
                selected = .myPage
            } label: {
                VStack(spacing: 5) {
                    Image(.myPageIcon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 16, height: 17)
                    Text(tab.rawValue)
                        .font(.system(size: 10, weight: .medium))
                }
                .foregroundStyle(selected == .myPage ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
            }
            
        }
    }
}

#Preview {
    RootTabBarView()
}
