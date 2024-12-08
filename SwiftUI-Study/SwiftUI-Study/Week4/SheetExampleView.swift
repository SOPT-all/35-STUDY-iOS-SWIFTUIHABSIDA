//
//  SheetExampleView.swift
//  SwiftUI-Study
//
//  Created by 김예지 on 12/8/24.
//

import SwiftUI

struct SheetExampleView: View {
    @State private var isSheetPresented = false
    @State private var userName = "김예지"

    var body: some View {
        VStack(spacing: 20) {
            Text("안녕하세요, \(userName)!")
                .font(.system(size: 25, weight: .bold))

            Button("모달 열기") {
                isSheetPresented = true
            }
            .font(.system(size: 20, weight: .semibold))
            .buttonStyle(.borderedProminent)

        }
        .sheet(isPresented: $isSheetPresented, onDismiss: {
            print("모달모달모달")
        }) {
            SheetContentView(userName: $userName)
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
        }
    }
}

struct SheetContentView: View {
    @Binding var userName: String
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("이름을 바꿔보시오")
                .font(.system(size: 20, weight: .semibold))

            TextField("이름을 입력하세요", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("닫기") {
                dismiss()
            }
            .font(.system(size: 20, weight: .semibold))
            .buttonStyle(.bordered)
            .padding()
        }
        .padding()
    }
}

struct SheetExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SheetExampleView()
    }
}
