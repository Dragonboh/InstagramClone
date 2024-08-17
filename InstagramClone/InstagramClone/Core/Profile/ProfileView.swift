//
//  ProfileView.swift
//  InstagramClone
//
//  Created by admin on 24.07.2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
    ]
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                VStack(spacing: 10) {
                    // pickture and stats
                    HStack {
                        Image("dragon-1")
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
                        Text("Chadwick Bozeman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Wakanda Forever")
                            .font(.footnote)
                    }
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
                LazyVGrid(columns: gridItems, spacing: 2, content: {
                    ForEach(2..<10) { index in
                        Image("dragon-\(index)")
                            .resizable()
                            .scaledToFill()
                    }
                    
                    ForEach(2..<10) { index in
                        Image("dragon-\(index)")
                            .resizable()
                            .scaledToFill()
                    }
                })
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
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
    ProfileView()
}
