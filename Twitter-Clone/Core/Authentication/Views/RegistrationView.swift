//
//  RegistrationView.swift
//  Twitter-Clone
//
//  Created by Guest User on 22/03/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var username = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get Started", title2: "Create your account")
            VStack(spacing:40){
                CustomInputField(imageName: "envelope", placeholder: "Enter Email", text: $email)
                CustomInputField(imageName: "person", placeholder: "Enter Username", text: $username)
                CustomInputField(imageName: "person", placeholder: "Enter Fullname", text: $fullname)
                CustomInputField(imageName: "lock", placeholder: "Enter Password", text: $password)
            }
            .padding(32)
            Button {
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10,x: 0,y: 0)
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account? ")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)

        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
