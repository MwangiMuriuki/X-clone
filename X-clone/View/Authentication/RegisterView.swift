//
//  RegisterView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 01/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @Environment(\.dismiss) var dismissView

    var body: some View {
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

            Text("Create your account")
                .font(.system(size: 24, weight: .heavy, design: .default))
                .frame(width: (screenBounds().width * 0.9), alignment: .center)

            VStack(alignment: .leading, spacing: 10, content: {
                CustomAuthTextField(placeholder: "Name", text: $name)

                CustomAuthTextField(placeholder: "Email", text: $email)

                SecureAuthTextField(placeholder: "Password", text: $password)
            })

            Spacer(minLength: 0)

            VStack(content: {

                Rectangle()
                    .frame(height: 1, alignment: .center)
                    .foregroundStyle(.gray)
                    .padding(.top, 40)

                HStack(content: {
                    Spacer(minLength: 0)

                    Button(action: {
                        print("Create new Account")
                    }, label: {
                        RoundedRectangle(cornerRadius: 36)
                            .frame(width: 80, height: 36)
                            .foregroundStyle(.labelColorPrimary)
                            .overlay(
                                Text("Next")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                            )
                    }).padding(.trailing, 24)
                })
            })

        }
    }
}

#Preview {
    RegisterView()
}
