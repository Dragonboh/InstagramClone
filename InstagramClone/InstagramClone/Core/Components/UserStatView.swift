//
//  UserStatView.swift
//  InstagramClone
//
//  Created by admin on 15.08.2024.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
    }
}

#Preview {
    UserStatView(value: 3, title: "Posts")
}
