//
//  ContentView.swift
//  SungMinCho
//
//  Created by 조성민 on 11/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstTextFieldValue: String = ""
    @State private var secondTextFieldValue: String = "미리 값 넣기"
    @State private var secondTabShowingText: String = ""
    
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                Text("First Title")
                    .font(.title)
                    .fontWeight(.bold)
                
                TextField("PlaceHolder", text: $firstTextFieldValue)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                if !firstTextFieldValue.isEmpty {
                    Text("TextField Value : \(firstTextFieldValue)")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            .tabItem {
                Label("First", systemImage: "house.fill")
            }
            
            VStack(spacing: 20) {
                Text("Second Title")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(spacing: 20) {
                    TextField("PlaceHolder", text: $secondTextFieldValue)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Button {
                        secondTabShowingText = secondTextFieldValue
                    } label: {
                        Text("확인")
                    }
                }
                
                if !secondTabShowingText.isEmpty {
                    Text("TextField Value : \(secondTabShowingText)")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            .tabItem {
                Image(systemName: "person.fill")
                Text("Second")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
