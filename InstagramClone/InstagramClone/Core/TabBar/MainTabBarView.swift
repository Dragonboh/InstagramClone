//
//  MainTabBarView.swift
//  InstagramClone
//
//  Created by admin on 24.07.2024.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "house")
                }
            
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "house")
                }
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "house")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "house")
                }
        }
        
    }
}

#Preview {
    MainTabBarView()
}
