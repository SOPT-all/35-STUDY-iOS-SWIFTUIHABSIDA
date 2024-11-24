//
//  ZStackExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 11/10/24.
//

import SwiftUI

struct ZStackExampleView: View {
    var body: some View {
        ZStack {
            // 배경 원형
            Circle()
                .fill(.blue.opacity(0.3))
                .frame(width: 200, height: 200)
            
            // 위에 겹쳐진 작은 원형
            Circle()
                .fill(.blue.opacity(0.7))
                .frame(width: 100, height: 100)
            
            // 텍스트
            Text("ZStack ZStack")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}
