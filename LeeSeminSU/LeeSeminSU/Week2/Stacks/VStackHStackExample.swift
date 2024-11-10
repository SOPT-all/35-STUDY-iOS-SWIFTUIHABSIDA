//
//  VStackHStackExample.swift.swift
//  LeeSeminSU
//
//  Created by 이세민 on 11/10/24.
//

import SwiftUI

struct VStackHStackExample: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            TextField("VStack", text: .constant(""))
                .padding()
                .cornerRadius(8)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("VStack", text: .constant(""))
                .padding()
                .cornerRadius(8)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
        
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: "rectangle.stack")
                .foregroundColor(.blue)
            Text("HStack")
                .font(.headline)
        }
        .padding()
        
    }
}
