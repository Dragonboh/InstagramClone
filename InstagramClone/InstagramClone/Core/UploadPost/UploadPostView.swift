//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by admin on 22.08.2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @State private var photoItem: PhotosPickerItem?
    @StateObject private var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.uploadImage = nil
                    tabIndex = 0
                    print("Cancel upload")
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Cancel upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            .padding(.horizontal)
            
            HStack(spacing: 8) {
                if let image = viewModel.uploadImage {
                    image
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
        .onAppear(perform: {
            imagePickerPresented.toggle()
        })
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
