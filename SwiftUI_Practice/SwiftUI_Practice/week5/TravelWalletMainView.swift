//
//  TravelWalletMainView.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 12/5/24.
//

import SwiftUI

struct TravelWalletMainView: View {
    
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor.white
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            PayView()
                .tabItem {
                    VStack {
                        Image("pay")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(selectedTab == 0 ? .twBlue : .gray)
                        Text("페이")
                    }
                }
                .tag(0)
            
            EtcView(title: "송금")
                .tabItem {
                    VStack {
                        Image("dollar")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(selectedTab == 1 ? .twBlue : .gray)
                        Text("송금")
                    }
                }
                .tag(1)
            
            EtcView(title: "직구")
                .tabItem {
                    VStack {
                        Image("shop")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(selectedTab == 2 ? .twBlue : .gray)
                        Text("직구")
                    }
                }
                .tag(2)
            
            EtcView(title: "여행")
                .tabItem {
                    VStack {
                        Image("travel")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(selectedTab == 3 ? .twBlue : .gray) // 선택된 탭일 때 색상
                        Text("여행")
                    }
                }
                .tag(3)
            
            EtcView(title: "마이")
                .tabItem {
                    VStack {
                        Image("my")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(selectedTab == 4 ? .twBlue : .gray)
                        Text("마이")
                    }
                }
                .tag(4)
        }
        .accentColor(.twBlue)
    }
}


// 메인 화면
struct PayView: View {
    
    @State private var isAdBannerVisible = true
    
    var body: some View {
        NavigationView {
            VStack(spacing: 22) {
                // 1. 카드 배너
                bannerCard
                    .padding(.top, 35)
                    .padding(.horizontal, 16)
                // 2. 내 지갑 섹션
                walletSection
                    .padding(.horizontal, 16)
                // 3. 광고 배너
                if isAdBannerVisible {
                    adBanner
                        .padding(.horizontal, 16)
                }
                // 4. 기능 버튼 섹션
                featureButtons
                Spacer()
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(spacing: 8) {
                        Text("홈")
                            .font(.custom("SUIT-Bold", size: 22))
                            .foregroundColor(.black)
                        Text("소셜페이")
                            .font(.custom("SUIT-Bold", size: 22))
                            .foregroundColor(.gray02)
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Image("qr_icon")
                        Image("bell_icon")
                    }
                    .foregroundColor(.black)
                }
            }
            .background(Color(.gray01).ignoresSafeArea())
        }
    }
    
    
    private var bannerCard: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.twGreen, .twBlue100]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
            HStack {
                Image("card_icon")
                    .resizable()
                    .frame(width: 44, height: 44)
                    .foregroundColor(.blue)
                VStack(alignment: .leading, spacing: 4) {
                    Text("드디어 나왔다!")
                        .font(.custom("SUIT-Medium", size: 13))
                        .foregroundColor(.gray)
                    Text("트래블월렛 플래티늄 카드")
                        .font(.custom("SUIT-Bold", size: 16))
                        .bold()
                }
                Spacer()
                Image("right_arrow_icon")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.yellow)
            }
            .padding(16)
        }
        .frame(height: 76)
    }
    
    private var walletSection: some View {
        VStack(alignment: .center) {
            HStack {
                Text("내 지갑")
                    .font(.custom("SUIT-SemiBold", size:18))
                Image("info_icon")
                    .resizable()
                    .frame(width: 14, height: 14)
                    .foregroundColor(.yellow)
                Spacer()
                Button(action: {}) {
                    Text("이용내역")
                        .font(.custom("SUIT-Medium", size:15))
                        .foregroundColor(.black)
                        .padding(.trailing, -10)
                    Image("right_arrow_icon")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.yellow)
                }
            }
            Text("아직 충전된 외화가 없습니다.")
                .font(.custom("SUIT-Medium", size: 13))
                .foregroundColor(.gray)
                .padding(.vertical, 44)
            Button(action: {}) {
                Text("충전하기")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .frame(height: 52)
                    .background(.twBlue)
                    .cornerRadius(11)
            }
        }
        .padding(.top, 25)
        .padding(.horizontal, 20)
        .padding(.bottom, 24)
        .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
    }
    
    private var adBanner: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("kakao")
                .resizable()
                .frame(width: 29, height: 29)
                .foregroundColor(.yellow)
            VStack(alignment: .leading) {
                Text("카카오뱅크 이용 중이시라면")
                    .font(.custom("SUIT-Medium", size: 10))
                Text("달러박스를 연동해보세요!")
                    .font(.custom("SUIT-Bold", size: 13))
            }
            Spacer()
            Button(action: {
                isAdBannerVisible.toggle()
            }) {
                Image("close_icon")
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color.white))
    }
    
    private var featureButtons: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                featureButton(icon: "n_icon", subtitle: "결제부터", title: "N빵하기")
                featureButton(icon: "send_icon", subtitle: "친구에게", title: "송금하기")
                featureButton(icon: "money_icon", subtitle: "외화간", title: "환전하기")
            }
            .padding(.leading, 16)
        }
    }
    
    private func featureButton(icon: String, subtitle: String, title: String) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 21) {
                Image(icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                VStack(alignment: .leading, spacing: 6) {
                    Text(subtitle)
                        .font(.custom("SUIT-Medium", size: 15))
                        .foregroundColor(.gray)
                    Text(title)
                        .font(.custom("SUIT-Bold", size: 15))
                }
            }
            Spacer()
        }
        .padding(.leading, 23)
        .frame(width: 131, height: 131)
        .background(RoundedRectangle(cornerRadius: 12).fill(Color.white))
    }
}

struct EtcView: View {
    let title: String
    
    var body: some View {
        VStack {
            Text("\(title) 화면")
                .font(.largeTitle)
                .bold()
        }
    }
}


#Preview {
    TravelWalletMainView()
}
