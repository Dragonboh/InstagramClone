//
//  UploadPostViewModel.swift
//  InstagramClone
//
//  Created by admin on 05.09.2024.
//

import Foundation
import PhotosUI
import SwiftUI

class UploadPostViewModel: ObservableObject {
    
    @Published var uploadImage: Image?
    @Published var selectedImage: PhotosPickerItem? {
        didSet {
            Task {
                await loadImage(fromItem: selectedImage)
            }
        }
    }
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let photoItem = item else { return }
        guard let image = try? await photoItem.loadTransferable(type: Image.self) else { return }
        uploadImage = image
    }
    
}
