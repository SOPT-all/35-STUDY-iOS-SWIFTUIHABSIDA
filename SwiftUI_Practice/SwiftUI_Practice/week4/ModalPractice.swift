//
//  ModalPractice.swift
//  SwiftUI_Practice
//
//  Created by 김민서 on 12/8/24.
//

import SwiftUI

struct ModalPractice: View {
    @State private var isShowingModal = false
    @State private var inputText = ""
    
    var body: some View {
        VStack {
            Button("Show Modal") {
                isShowingModal.toggle()
            }
        }
        .sheet(isPresented: $isShowingModal) {
            ModalView(inputText: $inputText)
        }
    }
}

struct ModalView: View {
    @Binding var inputText: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Enter something:")
            TextField("Type here", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Dismiss") {
                dismiss() // 버튼을 눌렀을 때 모달을 닫음
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ModalPractice()
}
