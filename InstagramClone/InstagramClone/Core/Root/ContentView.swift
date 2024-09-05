//
//  ContentView.swift
//  InstagramClone
//
//  Created by admin on 24.07.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabBarView()
            }
        }
    }
}

#Preview {
    ContentView()
}
