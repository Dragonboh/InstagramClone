//
//  IGTextField.swift
//  InstagramClone
//
//  Created by admin on 18.08.2024.
//

import SwiftUI

struct IGTextField: View {
    private let title: String
    @Binding var email: String

    init(title: String, email: Binding<String>) {
        self.title = title
        self._email = email
    }
//    init(action: @escaping () -> Void, title: String, email: Binding<String>) {
//        self.action = action
//        self.title = title
//        self.email = email
//    }
    
    var body: some View {
        TextField("Enter your email", text: $email)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}
//
//#Preview {
////    @State var email = ""
////    IGTextField(action: {
////        print("IGTextField preview")
////    }, title: "IGTextField preview", email: $email)
//}
