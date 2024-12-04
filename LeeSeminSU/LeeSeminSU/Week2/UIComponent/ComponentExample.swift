//
//  ComponentExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 11/10/24.
//

import SwiftUI

struct ComponentExample: View {
    @State private var isDamgomeV: Bool = false
    
    var body: some View {
        TabView {
            VStack {
                Text("Text")
                    .font(.title3)
                
                TextField("TextField", text: .constant(""))
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Label {
                    Text("Label")
                } icon: {
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                }.padding()
            }
            .padding()
            .tabItem {
                Label("인사", systemImage: "person.fill")
            }
            
            VStack {
                Text(isDamgomeV ? "브이담곰이 Image" : "우쭐담곰이 Image")
                    .font(.title3)
                    .padding()
                
                Image(isDamgomeV ? "vdamgome" : "damgome")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                
                Button(action: {
                    isDamgomeV.toggle()
                }) {
                    Text("Switch Button")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                .padding()
            }
            .tabItem {
                Label("담곰이", systemImage: "heart")
            }
        }
    }
}

#Preview {
    ComponentExample()
}
