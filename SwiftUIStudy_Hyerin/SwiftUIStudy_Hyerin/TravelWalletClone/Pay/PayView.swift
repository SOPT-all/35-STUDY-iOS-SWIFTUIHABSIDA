//
//  PayView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

struct PayView: View {
    
    @Binding var path: [String]
    @State var isAdBoxShown: Bool = true
    @EnvironmentObject var totalAmountManager: TotalAmountManager
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack(spacing: 22) {
                    TitleHeaderView()
                        .padding(.top, 5)
                        .padding(.bottom, 13)
                    PlatinumCardView()
                        .frame(height: 76)
                    MyWalletView(path: $path)
                        .environmentObject(totalAmountManager)
                        .frame(height: 228)
                    if isAdBoxShown {
                        AdView(isAdBoxShown: $isAdBoxShown)
                            .frame(height: 66)
                            .transition(.opacity)
                    }
                    PayFeatureView()
                }
            }
            .background(Color(hex: "F4F6F8"))
            .navigationDestination(for: String.self) { view in
                if view == "ChargeView" {
                    ChargeView(path: $path)
                        .environmentObject(totalAmountManager)
                }
            }
        }
    }
}
