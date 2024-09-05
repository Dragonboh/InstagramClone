//
//  CreateUserNameView.swift
//  InstagramClone
//
//  Created by admin on 19.08.2024.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username for your new account. You can always change it later.")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .padding(.top, 1)
            
            TextField("Username", text: $username)
                .textInputAutocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CreatePasswordView()
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
    CreateUsernameView()
}
