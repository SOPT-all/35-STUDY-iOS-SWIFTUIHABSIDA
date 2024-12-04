//
//  RootTabBarView.swift
//  TravelWalletSU
//
//  Created by 김승원 on 12/4/24.
//

import SwiftUI

struct RootTabBarView: View {
    
    enum Tab {
        case pay, remittance, directPurchase, travel, myPage
    }
    
    @State private var selected: Tab = .pay
    
    var body: some View {
        ZStack {
            TabView(selection: $selected) {
                NavigationStack {
                    Text("Pay")
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
            Spacer()
            
            Button {
                selected = .pay
            } label: {
                Image(systemName: "globe")
            }
            
            Spacer()
            
            Button {
                selected = .remittance
            } label: {
                Image(systemName: "globe")
            }
            
            Spacer()
            
            Button {
                selected = .directPurchase
            } label: {
                Image(systemName: "globe")
            }
            
            Spacer()
            
            Button {
                selected = .travel
            } label: {
                Image(systemName: "globe")
            }
            
            Spacer()
            
            Button {
                selected = .myPage
            } label: {
                Image(systemName: "globe")
            }
            
            Spacer()
        }
    }
}

#Preview {
    RootTabBarView()
}
