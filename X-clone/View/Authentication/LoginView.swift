//
//  LoginView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 13/11/2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var emailDone = false
    @Environment(\.dismiss) var dismissView


    var body: some View {
        // MARK: - If email/password/username has NOT been provided

        if !emailDone {
            VStack{
                ZStack{
                    HStack(content: {
                        Button(action: {
                            dismissView()
                        }, label: {
                            Text("Cancel")
                                .foregroundStyle(.labelColorPrimary)
                        })

                        Spacer()

                    }).padding(.horizontal)

                    Image("Premium")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 26, height: 26)
                        .padding(.trailing)

                }.padding(.bottom)

                Text("To get started, first enter your phone, email or @username")
                    .font(.system(size: 24, weight: .heavy, design: .default))
                    .frame(width: (screenBounds().width * 0.94), alignment: .leading)

                VStack(alignment: .leading, spacing: 10, content: {
                    CustomAuthTextField(placeholder: "Phone, email or username", text: $email)
                }).padding(.top, 40)

                Spacer(minLength: 0)

                VStack(content: {

                    Rectangle()
                        .frame(height: 1, alignment: .center)
                        .foregroundStyle(.gray)
                        .padding(.top, 40)

                    HStack(content: {

                        Button(action: {
                            print("Forgot Password")
                        }, label: {
                            RoundedRectangle(cornerRadius: 36)
                                .frame(width: 180, height: 36)
                                .foregroundStyle(.dynamicBG)
                                .overlay(
                                    Text("Forgot Password?")
                                        .fontWeight(.medium)
                                        .foregroundStyle(.labelColorPrimary)
                                )
                        }).padding(.leading, 10)

                        Spacer(minLength: 0)

                        Button(action: {
                            print("Next")
                            if !email.isEmpty{
                                emailDone.toggle()
                            }

                        }, label: {

                            if email.isEmpty{
                                RoundedRectangle(cornerRadius: 36)
                                    .frame(width: 80, height: 36)
                                    .foregroundStyle(.labelColorSecondary)
                                    .overlay(
                                        Text("Next")
                                            .fontWeight(.bold)
                                            .foregroundStyle(.white)
                                    )
                            }
                            else{
                                RoundedRectangle(cornerRadius: 36)
                                    .frame(width: 80, height: 36)
                                    .foregroundStyle(.labelColorPrimary)
                                    .overlay(
                                        Text("Next")
                                            .fontWeight(.bold)
                                            .foregroundStyle(.white)
                                    )
                            }


                        }).padding(.trailing, 24)
                    })
                    .padding(.top, 10)
                })

            }
        }

        // MARK: - If email/password/username has been provided
        else {
            VStack{
                ZStack{
                    HStack(content: {
                        Button(action: {
                            dismissView()
                        }, label: {
                            Text("Cancel")
                                .foregroundStyle(.labelColorPrimary)
                        })

                        Spacer()

                    }).padding(.horizontal)

                    Image("Premium")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 26, height: 26)
                        .padding(.trailing)

                }.padding(.bottom)

                Text("Enter your password")
                    .font(.system(size: 24, weight: .heavy, design: .default))
                    .frame(width: (screenBounds().width * 0.94), alignment: .leading)

                VStack(alignment: .leading, spacing: 10, content: {
                    SecureAuthTextField(placeholder: "Password", text: $password)
                }).padding(.top, 40)

                Spacer(minLength: 0)

                VStack(content: {

                    Rectangle()
                        .frame(height: 1, alignment: .center)
                        .foregroundStyle(.gray)
                        .padding(.top, 40)

                    HStack(content: {

                        Button(action: {
                            print("Back")
                            emailDone.toggle()
                        }, label: {
                            RoundedRectangle(cornerRadius: 36)
                                .frame(width: 60, height: 36)
                                .foregroundStyle(.dynamicBG)
                                .overlay(
                                    Text("Back")
                                        .fontWeight(.medium)
                                        .foregroundStyle(.labelColorPrimary)
                                )
                        }).padding(.leading, 10)

                        Spacer(minLength: 0)

                        Button(action: {

                            if !password.isEmpty{
                                print("Login")
                            }

                        }, label: {

                            if password.isEmpty{
                                RoundedRectangle(cornerRadius: 36)
                                    .frame(width: 80, height: 36)
                                    .foregroundStyle(.labelColorSecondary)
                                    .overlay(
                                        Text("Login")
                                            .fontWeight(.bold)
                                            .foregroundStyle(.white)
                                    )
                            }
                            else{
                                RoundedRectangle(cornerRadius: 36)
                                    .frame(width: 80, height: 36)
                                    .foregroundStyle(.labelColorPrimary)
                                    .overlay(
                                        Text("Login")
                                            .fontWeight(.bold)
                                            .foregroundStyle(.white)
                                    )
                            }

                        }).padding(.trailing, 24)
                    })
                    .padding(.top, 10)
                })

            }
        }



    }
}

#Preview {
    LoginView()
}
