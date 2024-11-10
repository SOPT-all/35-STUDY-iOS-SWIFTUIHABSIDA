//
//  PlaygroundView.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 11/9/24.
//

import SwiftUI

struct PlaygroundView: View {
    var body: some View {
        ZStack {
            Color("gray10")
                .ignoresSafeArea()
            
            VStack {
                HeaderSection()
                TagSection()
            }
            .padding(.horizontal, 16)
        }
    }
}

struct HeaderSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("sopt")
                    .resizable()
                    .frame(width: 90, height: 30)
                Spacer()
            }
            
            Text("김민서 님은\nSOPT와 9개월째")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
    }
}

struct TagSection: View {
    var body: some View {
        HStack {
            Text("35기 활동 중")
                .font(.headline)
                .padding(.horizontal, 10)
                .foregroundColor(.gray10)
                .frame(height: 35)
                .background(Color.soptOrange)
                .cornerRadius(50)
            Text("34")
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 35, height: 35)
                .background(.gray03)
                .cornerRadius(50)
            
            Spacer()
        }
    }
}
    }
}

#Preview {
    PlaygroundView()
}
