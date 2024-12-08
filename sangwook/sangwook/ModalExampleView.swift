//
//  ModalExampleView.swift
//  sangwook
//
//  Created by 우상욱 on 12/8/24.
//

import SwiftUI

struct ModalExampleView: View {
    @State private var showModal = false
    @State private var message = ""
    
    var body: some View {
        VStack {
            Text("Message: \(message)")
            Button(action: {
                showModal = true
            }) {
                Text("Show Modal")
            }
        }
        .sheet(isPresented: $showModal) {
            ModalView(message: $message)
        }
    }
}

struct ModalView: View {
    @Binding var message: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TextField("Enter your message", text: $message)
            Button(action: {
                dismiss()
            }) {
                Text("Close")
            }
        }
        .padding()
        .navigationTitle("Modal View")
    }
}

#Preview {
    ModalExampleView()
}
