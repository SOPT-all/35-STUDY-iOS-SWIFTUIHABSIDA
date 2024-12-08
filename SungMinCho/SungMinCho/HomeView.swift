//
//  HomeView.swift
//  SungMinCho
//
//  Created by 조성민 on 12/8/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView {
            Tab {
                payView
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
        VStack {
            announceView
        }
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
                .padding()
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
        .frame(width: 343, height: 76)
        .background(LinearGradient(gradient: Gradient(colors: [Color.cardLinearStart, Color.cardLinearEnd]), startPoint: .leading, endPoint: .trailing))
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
