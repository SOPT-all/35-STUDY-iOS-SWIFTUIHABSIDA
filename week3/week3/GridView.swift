//
//  GridViewByGrid.swift
//  week3
//
//  Created by  정지원 on 11/17/24.
//

import SwiftUI

struct GridViewEx: View {
    var body: some View {
        Grid {
            GridRow {
                Text("정")
                Text("지")
                Text("원")
                Color.mint
            }
            GridRow {
                Text("i")
                Text("O")
                Text("S")
                Color.pink
            }
            GridRow {
                Text("3")
                Text("5")
                Text("기")
                Color.cyan
            }
        }
    }
}

struct GridViewEx_Previews: PreviewProvider {
    static var previews: some View {
        GridViewEx()
    }
}
