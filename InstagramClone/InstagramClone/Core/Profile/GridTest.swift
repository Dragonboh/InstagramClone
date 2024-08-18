//
//  GridTest.swift
//  InstagramClone
//
//  Created by admin on 16.08.2024.
//

import SwiftUI

struct GridTest: View {
    let rows = [
        GridItem(.fixed(30), spacing: 1),
        GridItem(.fixed(60), spacing: 10),
        GridItem(.fixed(90), spacing: 20),
        GridItem(.fixed(10), spacing: 0)
    ]


    var body: some View {
        ScrollView(.horizontal) {
            VStack(spacing: 0) {
                Rectangle().fill(.red)
                
                LazyHGrid(rows: rows, spacing: 5) {
                    ForEach(0...300, id: \.self) { _ in
                        Color.red.frame(width: 30)
                        Color.green.frame(width: 40)
                        Color.blue.frame(width: 30)
                        Color.yellow.frame(width: 30)
                    }
                }
                .background(.black)
                .frame(height: 231)
                Rectangle().fill(.blue)
            }
        }
        .background(Color.yellow)
    }
}

#Preview {
    GridTest()
}
