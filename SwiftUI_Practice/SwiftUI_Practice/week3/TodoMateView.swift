//
//  TodoMateView.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 11/17/24.
//

import SwiftUI

struct TodoMateView: View {
    let days = Array(1...30)
    let weekDays = ["월", "화", "수", "목", "금", "토", "일"]
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1...10, id: \.self) { index in
                        VStack {
                            Image("character_image3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            Text("친구 \(index)")
                                .font(.caption)
                                .fontWeight(.medium)
                        }
                        
                    }
                }
            }
            .padding(.bottom, 30)
            HStack {
                Image("character_image2")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                VStack(alignment: .leading) {
                    Text("민서공이")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text("도파민 중독녀")
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
                .padding(.leading, 5)
                Spacer()
            }
            .padding(.bottom, 20)
            
            HStack {
                Text("2024년 11월")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "chevron.left")
                Image(systemName: "chevron.right")
            }
            .padding(.bottom, 20)
            
            // 요일 헤더
            HStack {
                ForEach(weekDays, id: \.self) { day in
                    Text(day)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(day == "토" ? .blue : day == "일" ? .red : .primary)
                        .font(.caption)
                        .fontWeight(.medium)
                }
            }
            .padding(.bottom, 10)
            
            LazyVGrid(columns: columns) {
                ForEach(days, id: \.self) { day in
                    VStack {
                        ZStack {
                            if day <= 15 {
                                Image("todo_checked")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                Image("check")
                                    .resizable()
                                    .frame(width: 15, height: 11)
                            } else {
                                Image("todo_none")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                Text("2")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                    .fontWeight(.bold)
                            }
                        }
                        
                        // 날짜 텍스트
                        Text("\(day)")
                            .foregroundColor(.primary)
                            .font(.caption2)
                            .fontWeight(.medium)
                    }
                    .padding(.bottom, 10)
                }
            }
            Spacer()
        }
        .padding()
        
    }
    
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        TodoMateView()
    }
}

