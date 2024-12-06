//
//  AdvertisingBannerView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/7/24.
//

import SwiftUI

struct AdvertisingBannerView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
            
            HStack(spacing: 15) {
                Image(.kakaobank)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 29, height: 29)
                
                VStack(alignment: .leading, spacing: 6){
                    Text("카카오뱅크 이용중이시라면")
                        .font(.system(size: 10, weight: .medium))
                    
                    Text("달러박스를 연동해보세요!")
                        .font(.system(size: 13, weight: .bold))
                }
                
                Spacer()
                
                Button(action: {
                    print("닫기 버튼")
                }) {
                    Image(.x)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
            }
            .padding(.horizontal, 16)
        }
        .frame(height: 66)
        .padding(.horizontal, 16)
    }
}

#Preview {
    AdvertisingBannerView()
}
