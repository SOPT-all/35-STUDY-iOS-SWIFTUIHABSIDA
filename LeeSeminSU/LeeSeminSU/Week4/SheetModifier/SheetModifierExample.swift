//
//  SheetModifierExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

struct SheetModifierExample: View {
    @State private var showModal = false // 모달을 보여줄지 말지를 결정하는 상태 변수
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("나의 이름은")
                .font(.title)
            TextField("이름을 입력하세요.", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("모달 열기") {
                showModal.toggle()
            }
            .sheet(isPresented: $showModal) {
                ModalView(name: name) // 입력된 이름을 모달에 전달
            }
            .padding()
        }
        .padding()
    }
}

struct ModalView: View {
    var name: String // 전달받은 이름
    @Environment(\.dismiss) var dismiss // 모달을 닫을 때 사용
    
    var body: some View {
        VStack {
            Text("안녕 \(name)?")
                .font(.title)
            Button("닫기") {
                dismiss()
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    SheetModifierExample()
}
