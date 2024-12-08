//
//  MainView.swift
//  week4
//
//  Created by  정지원 on 12/8/24.
//
import SwiftUI

struct MainView: View {
    @State private var showingModal = false
    
    var body: some View {
        Button("메시지 작성하기") {
            showingModal = true
        }
        .sheet(isPresented: $showingModal) {
            MessageView()
        }
    }
}

struct MessageView: View {
    @Environment(\.dismiss) var dismiss
    @State private var message = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("메시지를 입력하세요", text: $message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("저장") {
                    dismiss()
                }
            }
            .navigationTitle("새 메시지")
            .navigationBarItems(trailing: Button("취소") {
                dismiss()
            })
        }
    }
}

#Preview {
    MainView()
}
