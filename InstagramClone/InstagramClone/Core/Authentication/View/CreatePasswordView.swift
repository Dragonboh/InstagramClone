//
//  CreatePasswordView.swift
//  InstagramClone
//
//  Created by admin on 19.08.2024.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You password must be at least 6 characters in lenght.")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .padding(.top, 1)
            
            SecureField("Password", text: $password)
                .textInputAutocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CompleteSingUpView()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 44)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.white)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .navigationBarBackButtonHidden()
        .toolbar(content: {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        })
    }
}

#Preview {
    CreatePasswordView()
}
