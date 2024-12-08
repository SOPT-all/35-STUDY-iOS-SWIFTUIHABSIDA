//
//  Main.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

struct Main: View {
    @State private var isDollarBoxVisible = true
    
    @State private var chargedMoney: Int = 0
    
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    // 상단 네비게이션바
                    HStack {
                        Text("홈")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.trailing, 10)
                        Text("소셜페이")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                        
                        Spacer()
                        
                        Image("qr")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.trailing, 10)
                        Image("notification")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    .padding()
                    
                    // 플래티늄 카드
                    HStack {
                        Image("platinumCard")
                        VStack(alignment: .leading, spacing: 5){
                            Text("드디어 나왔다!")
                                .font(.system(size: 13))
                                .foregroundColor(Color(hex: "#616161"))
                            HStack(spacing: 0) {
                                Text("트래블월렛 ")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(Color(hex: "#000000"))
                                Text("플래티늄")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(Color(hex: "#0079FF"))
                                Text(" 카드")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(Color(hex: "#000000"))
                            }
                        }
                        Spacer()
                        Image("arrow")
                    }
                    .padding()
                    .frame(width: 343, height: 76)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [
                                        Color(hex: "6FE8B7"),
                                        Color(hex: "35DAE3")
                                    ]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    )
                    .padding(.bottom)
                    
                    // 내 지갑
                    HStack{
                        VStack(spacing: 45) {
                            HStack {
                                Text("내 지갑")
                                    .font(.system(size: 18, weight: .semibold))
                                Image("info")
                                
                                Spacer()
                                
                                Text("이용내역")
                                    .font(.system(size: 15, weight: .medium))
                                Image("arrow")
                                    .padding(.leading, -13)
                            }
                            .padding(.horizontal, 5)
                            
                            if chargedMoney == 0 {
                                Text("아직 충전된 외화가 없습니다.")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color(hex: "#616161"))
                            }
                            else {
                                HStack {
                                    Image("USA")
                                    Text("미국")
                                        .font(.system(size: 15, weight: .semibold))
                                    
                                    Spacer()
                                    
                                    Text("$\(chargedMoney)")
                                        .font(.system(size: 15, weight: .medium))
                                }
                                .padding(.horizontal, 5)
                            }
                            
                            NavigationLink(destination: Charge(chargedMoney: $chargedMoney)) {
                                Text("충전하기")
                                    .font(.system(size: 15, weight: .bold))
                                    .foregroundColor(.white)
                                    .frame(width: 302, height: 48)
                                    .background(Color(hex: "#0BAEFF"))
                                    .cornerRadius(12)
                            }
                        }
                        .padding()
                        .frame(width: 343, height: 228)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(hex: "#FFFFFF"))
                        )
                    }
                    .padding(.bottom)
                    
                    // 달러박스
                    if isDollarBoxVisible {
                        HStack {
                            HStack(spacing: 20) {
                                Image("kakaoBank")
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("카카오뱅크 이용중이시라면")
                                        .font(.system(size: 10))
                                    Text("달러박스를 연동해보세요!")
                                        .font(.system(size: 13, weight: .bold))
                                }
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                isDollarBoxVisible = false
                            }) {
                                Image("xmark")
                            }
                        }
                        .padding()
                        .frame(width: 343, height: 66)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(hex: "#FFFFFF"))
                        )
                        .padding(.bottom)
                    }
                    
                    // 수평 스크롤 카드
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            CardView(icon: "N", subtitle: "결제부터", title: "N빵하기")
                            CardView(icon: "remit", subtitle: "친구에게", title: "송금하기")
                            CardView(icon: "exchange", subtitle: "외화간", title: "환전하기")
                        }
                        .padding(.horizontal, 25)
                    }
                    Spacer()
                }
                .background(Color(hex: "#F4F4F4"))
            }
            .navigationBarHidden(true)
            
            .tabItem {
                Label("페이", image: "pay")
            }
            
            Text("송금")
                .tabItem {
                    Label("송금", image: "remitment")
                }
                .disabled(true)
            
            Text("직구")
                .tabItem {
                    Label("직구", image: "purchase")
                }
                .disabled(true)
            
            Text("여행")
                .tabItem {
                    Label("여행", image: "travel")
                }
                .disabled(true)
            
            Text("마이")
                .tabItem {
                    Label("마이", image: "my")
                }
                .disabled(true)
        }
        .accentColor(Color(hex: "#0BAEFF"))
    }
}

@ViewBuilder
func CardView(icon: String, subtitle: String, title: String) -> some View {
    VStack(alignment: .leading) {
        Image(icon)
            .padding(7)
        
        Spacer()
        
        Text(subtitle)
            .font(.system(size: 15))
            .foregroundColor(Color(hex: "#616161"))
            .padding(.leading, 7)
            .padding(.bottom, 1)
        Text(title)
            .font(.system(size: 15, weight: .semibold))
            .padding(.leading, 7)
    }
    .padding()
    .frame(width: 131, height: 131, alignment: .leading)
    .background(Color(hex: "FFFFFF"))
    .cornerRadius(15)
}


#Preview {
    Main()
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
