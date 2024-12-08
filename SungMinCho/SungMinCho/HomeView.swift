//
//  HomeView.swift
//  SungMinCho
//
//  Created by 조성민 on 12/8/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isDollorBoxHidden: Bool = false
    
    var body: some View {
        TabView {
            Tab {
                ZStack {
                    Color.travelBackground
                        .ignoresSafeArea()
                    payView
                }
            } label: {
                Label {
                    Text("페이")
                } icon: {
                    Image(.pay)
                        .renderingMode(.template)
                }
            }
            
            Tab {
                sendView
            } label: {
                Label {
                    Text("송금")
                } icon: {
                    Image(.send)
                        .renderingMode(.template)
                }
            }
            
            Tab {
                shopView
            } label: {
                Label {
                    Text("직구")
                } icon: {
                    Image(.shop)
                        .renderingMode(.template)
                }
            }
            
            Tab {
                travelView
            } label: {
                Label {
                    Text("여행")
                } icon: {
                    Image(.travel)
                        .renderingMode(.template)
                }
            }
            
            Tab {
                myView
            } label: {
                Label {
                    Text("마이")
                } icon: {
                    Image(.my)
                        .renderingMode(.template)
                }
            }
        }
        .tint(.travelPrimary)
        
    }
    
    private var payView: some View {
        VStack(spacing: 20) {
            announceView
            myWalletView
            if !isDollorBoxHidden {
                dollorBoxView
            }
        }
        .frame(width: 343)
    }
    
    private var announceView: some View {
        HStack {
            Image(.card)
                .scaledToFit()
                .background(
                    Circle()
                        .fill(Color.cardBackground)
                        .frame(width: 44, height: 44)
                )
                .padding(.leading, 16)
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text("드디어 나왔다!")
                    .font(.system(size: 13))
                    .foregroundStyle(.grayFont)
                Spacer()
                Text("트래블월렛 ")
                    .font(.system(size: 16, weight: .bold))
                + Text("플래티늄 ")
                    .foregroundStyle(Color.blue)
                    .font(.system(size: 16, weight: .bold))
                + Text("카드")
                    .font(.system(size: 16, weight: .bold))
            }
            Spacer()
            Button {} label: {
                Image(systemName: "greaterthan")
                    .resizable()
                    .fontWeight(.semibold)
                    .frame(width: 5, height: 10)
                    .foregroundStyle(.black)
                    .padding()
            }
        }
        .padding(.all, 16)
        .frame(height: 76)
        .background(LinearGradient(gradient: Gradient(colors: [Color.cardLinearStart, Color.cardLinearEnd]), startPoint: .leading, endPoint: .trailing))
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private var myWalletView: some View {
        VStack(alignment: .center) {
            HStack {
                Text("내 지갑")
                    .font(.system(size: 18, weight: .semibold))
                Image(systemName: "exclamationmark.circle")
                    .resizable()
                    .frame(width: 14, height: 14)
                Spacer()
                Text("이용내역")
                    .font(.system(size: 15))
                Image(systemName: "greaterthan")
                    .resizable()
                    .fontWeight(.semibold)
                    .frame(width: 5.5, height: 10.5)
            }
            .padding(.top)
            Spacer()
            // TODO: List 있는지 확인 로직
            Text("아직 충전된 원화가 없습니다.")
                .font(.system(size: 13))
                .foregroundStyle(.grayFont)
            Spacer()
            Button {
                //TODO: 화면 전환
            } label: {
                Text("충전하기")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundStyle(Color.white)
                    .frame(width: 302, height: 52)
                    .background(Color.travelPrimary)
                    .clipShape(RoundedRectangle(cornerRadius: 11))
            }
            .padding(.bottom)
        }
        .padding()
        .background(Color.white)
        .frame(height: 228)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private var dollorBoxView: some View {
        HStack {
            Image(.kakaoBank)
                .scaledToFit()
                .padding(.leading, 10)
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text("카카오뱅크 이용중이시라면")
                    .font(.system(size: 10))
                Spacer()
                Text("달러박스를 연동해보세요!")
                    .font(.system(size: 13, weight: .bold))
            }
            Spacer()
            Button {
                self.isDollorBoxHidden = true
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 14, height: 14)
                    .foregroundStyle(.black)
                    .padding()
            }
        }
        .padding(.all, 16)
        .frame(height: 66)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private var sendView: some View {
        Text("SendView")
    }
    
    private var shopView: some View {
        Text("ShopView")
    }
    
    private var travelView: some View {
        Text("TravelView")
    }
    
    private var myView: some View {
        Text("MyView")
    }
    
}

#Preview {
    HomeView()
}
