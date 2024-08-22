//
//  CurrentProfileView.swift
//  InstagramClone
//
//  Created by admin on 20.08.2024.
//

import SwiftUI

struct CurrentProfileView: View {
    var body: some View {
        NavigationStack {
            ProfileView(user: User.MOCK_ONE_USER)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    })
                }
            })
        }
    }
}

#Preview {
    CurrentProfileView()
}
