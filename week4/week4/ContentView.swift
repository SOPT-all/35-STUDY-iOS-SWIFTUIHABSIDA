//
//  ContentView.swift
//  week4
//
//  Created by  정지원 on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("프로필 보기") {
                    ProfileView()
                }
                NavigationLink("설정") {
                    SettingsView()
                }
            }
            .navigationTitle("메인 화면")
        }
    }
}

struct ProfileView: View {
    @State private var username = "정지원"
    @State private var bio = "SwiftUI 개발자"
    
    var body: some View {
        Form {
            Section(header: Text("사용자 정보")) {
            //@State 변수로 username과 bio에 TextField 입력값을 실시간으로 반영
                TextField("이름", text: $username)
                TextField("자기소개", text: $bio)
            }
            Section(header: Text("계정 정보")) {
                Text("가입일: 2024년 12월 8일")
                Text("마지막 로그인: 오늘")
            }
        }
        .navigationTitle("프로필")
    }
}

struct SettingsView: View {
    @State private var isNotificationEnabled = true
    @State private var isDarkMode = false
    @State private var selectedLanguage = "한국어"
    
    var body: some View {
        Form {
            Section(header: Text("일반")) {
                Toggle("알림 설정", isOn: $isNotificationEnabled)
                Toggle("다크 모드", isOn: $isDarkMode)
            }
            Section(header: Text("언어")) {
                Picker("언어 선택", selection: $selectedLanguage) {
                    Text("한국어").tag("한국어")
                    Text("English").tag("English")
                    Text("日本語").tag("日本語")
                }
            }
        }
        .navigationTitle("설정")
    }
}

#Preview {
    ContentView()
}
