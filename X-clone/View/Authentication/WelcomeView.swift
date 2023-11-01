//
//  WelcomeView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 01/11/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {

        NavigationStack{
            VStack{
                // Header
                HStack{
                    Spacer(minLength: 0)

                    Image("Premium")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 26, height: 26)
                        .padding(.trailing)

                    Spacer(minLength: 0)
                }

                Spacer(minLength: 0)

                // Label
                Text("See what's happening in the world right now")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .frame(width: (screenBounds().width * 0.9), alignment: .center)

                Spacer(minLength: 0)

                // MARK: - Buttons Stack
                VStack(alignment: .center, spacing: 30, content: {

                    Button(action: {
                        print("Sign in with Google")
                    }, label: {
                        HStack(spacing: -4, content: {
                            Image("google_icon")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 25, height: 25)
                                .padding(.trailing)

                            Text("Continue with Google")
                                .fontWeight(.bold)
                                .foregroundStyle(.labelColorPrimary)
                        })
                        .overlay(
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 300, height: 50)
                        )

                    })


                    Button(action: {
                        print("Sign in with Apple")
                    }, label: {
                        HStack(spacing: -4, content: {
                            Image(systemName: "apple.logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 25, height: 25)
                                .padding(.trailing)
                                .foregroundStyle(.labelColorPrimary)

                            Text("Continue with Apple")
                                .fontWeight(.bold)
                                .foregroundStyle(.labelColorPrimary)
                        })
                        .overlay(
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 300, height: 50)
                        )
                    })


                    HStack(alignment: .center, spacing: 8, content: {
                        Rectangle()
                            .frame(height: 0.8)
                            .foregroundStyle(.separator)

                        Text("Or")
                            .fontWeight(.semibold)
                            .foregroundStyle(.labelColorSecondary)

                        Rectangle()
                            .frame(height: 0.8)
                            .foregroundStyle(.separator)

                    })
                    .frame(width: 300, height: 10)


                    Button(action: {
                        print("Create new Account")
                    }, label: {
                        RoundedRectangle(cornerRadius: 36)
                            .frame(width: 300, height: 50)
                            .foregroundStyle(.twitterBlue)
                            .overlay(
                                Text("Create New Account")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                            )
                    })


                })
                .padding()

                VStack(alignment: .leading, content: {
                    VStack{
                        Text("By signing up you agree to our ")
                        +
                        Text("Terms")
                            .foregroundStyle(.twitterBlue)
                        +
                        Text(", ")
                        +
                        Text("Privacy Policy")
                            .foregroundStyle(.twitterBlue)
                        +
                        Text(", ")
                        +
                        Text("Cookie Use.")
                            .foregroundStyle(.twitterBlue)
                    }
                    .padding(.bottom)

                    VStack(alignment: .leading, content: {
                        HStack(spacing: 2, content: {
                            Text("Have an account already? ")
                            Text("Sign In")
                                .foregroundStyle(.twitterBlue)
                        })
                    })
                }).padding(.bottom)

            }.toolbar(.hidden, for: .navigationBar)
            .navigationTitle("")
        }

    }
}

#Preview {
    WelcomeView()
}
