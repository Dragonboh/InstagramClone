//
//  ProfileView.swift
//  InstagramClone
//
//  Created by admin on 24.07.2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
    ]
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter { post in
            post.user?.username == user.username
        }
    }
    
    var body: some View {
            ScrollView {
                // header
                VStack(spacing: 10) {
                    // pickture and stats
                    HStack {
                        Image(user.profileImageUrl ?? "")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        UserStatView(value: 3, title: "Posts")
                        Spacer()
                        UserStatView(value: 12, title: "Followers")
                        Spacer()
                        UserStatView(value: 24, title: "Following")
                    }
                    .padding(.horizontal)
                    
                    //name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullname = user.fullname {
                            Text(fullname)
                                .fontWeight(.semibold)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                        }
                    }
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // Button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundStyle(Color.black)
                            .overlay {
                                RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1.0)
                            }
                    }

                    //Divider
                    Divider()
                }
                
                // post grid view
                GeometryReader(content: { geometry in
                    let height = calculateHeight(width: geometry.size.width)
                    
                    LazyVGrid(columns: gridItems, spacing: 2, content: {
                        ForEach(posts) { post in
                            Image(post.imageUrl)
                                .resizable()
                                .scaledToFill()
                                .frame(height: height)
                        }
                    })
                })
            }
            .padding(.top)
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    private func calculateHeight(width: CGFloat) -> CGFloat {
        var height = width / 3
        height = height - CGFloat(gridItems.count) + 1
        return height
    }
}

#Preview {
    ProfileView(user: User.MOCK_ONE_USER)
}
