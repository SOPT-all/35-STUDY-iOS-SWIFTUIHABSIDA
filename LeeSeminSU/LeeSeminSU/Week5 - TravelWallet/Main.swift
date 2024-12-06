//
//  Main.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

struct Main: View {
    var body: some View {
        TabView {
            VStack {
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
                
                Spacer()
            }
            
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
        .accentColor(Color(red: 0.43, green: 0.68, blue: 1))
        .padding([.leading, .trailing], 15)
    }
}


#Preview {
    Main()
}
