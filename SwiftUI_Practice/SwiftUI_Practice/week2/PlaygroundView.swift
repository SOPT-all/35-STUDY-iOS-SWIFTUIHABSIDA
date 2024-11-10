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
    }
}

#Preview {
    PlaygroundView()
}
