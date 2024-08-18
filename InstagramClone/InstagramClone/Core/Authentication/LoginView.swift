//
//  LoginView.swift
//  InstagramClone
//
//  Created by admin on 18.08.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                //logo image
                Image("Logo-Instagram")
                    .resizable()
                    .frame(width: 220, height: 124)
                
                // text fields
                VStack {
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 24)
                }
                
                Button(action: {
                    print("Forget password")
                }, label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 20)
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button(action: {
                    print("Login button ")
                }, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(.white)
                    
                })
                .padding(.vertical)
                
                GeometryReader { geo in
                    HStack {
                        Spacer()
                        Rectangle()
                            .frame(width: (geo.size.width / 2) - 40, height: 0.5)
                        
                        Text("OR")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    
                        Rectangle()
                            .frame(width: (geo.size.width / 2) - 40, height: 0.5)
                        Spacer()
                            
                    }
                    .foregroundStyle(.gray)
                }
                .frame(height: 20)
                
                HStack {
                    Image("facebook-logo")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Sing up")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)

            }
        }
    }
}

#Preview {
    LoginView()
}
