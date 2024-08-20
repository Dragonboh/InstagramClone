//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by admin on 18.08.2024.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Add you email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You will use this email to sing in to your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .padding(.top, 1)
            
            TextField("Email", text: $email)
                .textInputAutocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CreateUsernameView()
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
    AddEmailView()
}
