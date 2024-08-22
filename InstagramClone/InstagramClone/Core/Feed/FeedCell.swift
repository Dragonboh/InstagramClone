//
//  FeedCell.swift
//  InstagramClone
//
//  Created by admin on 17.08.2024.
//

import SwiftUI

struct FeedCell: View {
    private let post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    var body: some View {
        VStack {
            //Image + username
            if let user = post.user {
                HStack {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        
                    Spacer()
                }
                .padding(.leading, 8)
            }
            
            // Post Image
//            GeometryReader { geo in
//                Image("dragon-6")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: geo.size.width)
//            }
            Image(post.imageUrl)
                .resizable()
//                .scaledToFill()
//                .aspectRatio(contentMode: .fill)
                .frame(height: 400)
            
          
//                .frame(height: 400)

           
            // action buttons
            HStack {
                Button(action: {
                    print("like post")
                }, label: {
                  Image(systemName: "heart")
                        .imageScale(.large)
                })
                
                Button(action: {
                    print("comment post")
                }, label: {
                    Image(systemName: "bubble.right")
                          .imageScale(.large)
                })
                
                Button(action: {
                    print("share post")
                }, label: {
                    Image(systemName: "paperplane")
                          .imageScale(.large)
                })
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(.black)
            
            // likes label
            Text("\(post.likes) lieks")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // caption Label
            HStack {
                Text("\(post.user?.username ?? "") ")
                    .fontWeight(.semibold) +
                Text(post.caption)
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POSTS[0])
}
