//
//  GridViewExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 11/24/24.
//

import SwiftUI

struct GridViewExample: View {
    var body: some View {
        Grid {
            GridRow {
                Text("1")
                Text("2")
                Text("3")
            }
            
            GridRow {
                Text("4")
                Text("5")
                Text("6")
            }
            
            GridRow {
                Text("7")
                Text("8")
                Text("9")
            }
        }
        .font(.title)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
    }
}

#Preview {
    GridViewExample()
}

