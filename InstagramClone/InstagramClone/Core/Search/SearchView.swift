//
//  SearchView.swift
//  InstagramClone
//
//  Created by admin on 18.08.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        }
                    }
                    
//                    ForEach(1 ..< 10) { index in
//                        HStack {
//                            let text = "dragon-\(index)"
//                            Image(text)
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                            .clipShape(Circle())
//                            
//                            VStack(alignment: .leading) {
//                                Text(text)
//                                    .fontWeight(.semibold)
//                                Text(text)
//                            }
//                            .font(.footnote)
//                            
//                            Spacer()
//                        }
//                        .padding(.horizontal)
//                    }
                    
                }
                .padding(.top, 8)
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, prompt: "Search...")
        }
    }
}

#Preview {
    SearchView()
}
