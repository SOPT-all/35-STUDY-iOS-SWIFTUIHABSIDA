//
//  TabbarView.swift
//  SwiftUIStudy_Hyerin
//
//  Created by 조혜린 on 12/8/24.
//

import SwiftUI

enum Tab: String {
    case pay
    case transfer
    case directPerhase
    case travel
    case my
}

struct TabbarView: View {
    
    @StateObject private var totalAmountManager = TotalAmountManager()
    @State var path: [String] = []
    @State var selectedTab: Tab = .pay
    
    var body: some View {
        
        ZStack {
            switch selectedTab {
            case .pay:
                PayView(path: $path)
                    .environmentObject(totalAmountManager)
            case .transfer:
                Text("송금 탭")
                    .font(.SUITFont(weight: .bold, size: 30))
            case .directPerhase:
                Text("직구 탭")
                    .font(.SUITFont(weight: .bold, size: 30))
            case .travel:
                Text("여행 탭")
                    .font(.SUITFont(weight: .bold, size: 30))
            case .my:
                Text("마이 탭")
                    .font(.SUITFont(weight: .bold, size: 30))
            }
            
            if path.isEmpty {
                VStack {
                    Spacer()
                    CustomTabView(selectedTab: $selectedTab)
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CustomTabView: View {
    
    @Binding var selectedTab: Tab

    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Button {
                    selectedTab = .pay
                } label: {
                    VStack(spacing: 8) {
                        Image(.iconPay)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 18, height: 13)
                        Text("페이")
                            .font(.SUITFont(weight: .medium, size: 10))
                    }
                    .foregroundStyle(selectedTab == .pay ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
                }
                Spacer()
                Button {
                    selectedTab = .transfer
                } label: {
                    VStack(spacing: 5) {
                        Image(.iconTransfer)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 19, height: 19)
                        Text("송금")
                            .font(.SUITFont(weight: .bold, size: 10))
                    }
                    .foregroundStyle(selectedTab == .transfer ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
                }
                Spacer()
                Button {
                    selectedTab = .directPerhase
                } label: {
                    VStack(spacing: 5) {
                        Image(.iconDirectPerhase)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("직구")
                            .font(.SUITFont(weight: .bold, size: 10))
                    }
                    .foregroundStyle(selectedTab == .directPerhase ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
                }
                Spacer()
                Button {
                    selectedTab = .travel
                } label: {
                    VStack(spacing: 5) {
                        Image(.iconTravel)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("여행")
                            .font(.SUITFont(weight: .bold, size: 10))
                    }
                    .foregroundStyle(selectedTab == .travel ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
                }
                Spacer()
                Button {
                    selectedTab = .my
                } label: {
                    VStack(spacing: 5) {
                        Image(.iconMy)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 16, height: 17)
                        Text("마이")
                            .font(.SUITFont(weight: .bold, size: 10))
                    }
                    .foregroundStyle(selectedTab == .my ? Color(hex: "0BAEFF") : Color(hex: "BDBDBD"))
                }
            }
            .padding(.horizontal, 29)
            Spacer()
        }
        .padding(.top, 7)
        .frame(width: UIScreen.main.bounds.width, height: 75)
        .background(
            Color(hex: "FFFFFF")
                .shadow(color: .black.opacity(0.1), radius: 10)
        )
    }
}

#Preview {
    TabbarView()
}
