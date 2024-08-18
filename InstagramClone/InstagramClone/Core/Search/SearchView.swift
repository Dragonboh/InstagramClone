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
                    ForEach(1 ..< 10) { index in
                        HStack {
                            let text = "dragon-\(index)"
                            Image(text)
                                .resizable()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(text)
                                    .fontWeight(.semibold)
                                Text(text)
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    
                    ForEach(1 ..< 10) { index in
                        HStack {
                            let text = "dragon-\(index)"
                            Image(text)
                                .resizable()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(text)
                                    .fontWeight(.semibold)
                                Text(text)
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    
                }
                .padding(.top, 8)
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, prompt: "Search...")
        }
    }
}

#Preview {
    SearchView()
}
