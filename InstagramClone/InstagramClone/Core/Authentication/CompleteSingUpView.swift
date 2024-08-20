//
//  CompleteSingUpView.swift
//  InstagramClone
//
//  Created by admin on 19.08.2024.
//

import SwiftUI

struct CompleteSingUpView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome to Instagram, bogdan.pankevych")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .padding(.top, 1)
            
            Button {
                print("Complete Sing Up")
            } label: {
                Text("Complete Sing Up")
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
    CompleteSingUpView()
}
