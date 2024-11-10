//
//  SpacerPaddingExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 11/10/24.
//

import SwiftUI

struct SpacerPaddingExample: View {
    var body: some View {
        VStack{
            Text("Spacer")
                .font(.title3)
                .padding()
            
            HStack {
                Text("왼쪽")
                    .padding()
                    .border(.yellow)
                Spacer()  // Spacer가 왼쪽 뷰와 오른쪽 뷰 사이에 남는 공간을 채움
                Text("오른쪽")
                    .padding()
                    .border(.yellow)
            }
            .padding()
            .border(.yellow)
        }
        .padding(.bottom, 100)
        
        Text("Padding")
            .font(.title3)
            .padding() // 기본 패딩은 모든 방향에 동일한 여백을 추가
            .border(.blue)
    }
}
