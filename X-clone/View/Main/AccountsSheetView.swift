//
//  AccountsSheetView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct AccountsSheetView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            HStack(alignment: .center, content: {
                Button(action: {

                }, label: {
                    Text("Edit")
                })
                .foregroundStyle(.primary)
                .fontWeight(.medium)

                Spacer(minLength: 0)

                Text("Accounts")
                    .fontWeight(.bold)
                    .padding(.trailing, 10)
                    .foregroundStyle(.primary)
                    Spacer()

            })

            //MARK: - Users
            HStack(spacing: 15, content: {
                Image("person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                VStack(alignment: .leading, spacing: 0,content: {
                    Text("Full Name")
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)

                    Text("@userName")
                        .fontWeight(.medium)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                })

                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)

                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.twitterBlue)

            })


            // MARK: - Buttons
            VStack(alignment: .leading, spacing: 20, content: {
                Button(action: {

                }, label: {
                    Text("Create a new account")
                })
                .foregroundStyle(.blue)
                .fontWeight(.medium)


                Button(action: {

                }, label: {
                    Text("Add an existing account")
                })
                .foregroundStyle(.blue)
                .fontWeight(.medium)

            })
        })
        .padding(.top, 25)
        .padding(.leading, 20)
        .padding(.trailing, 20)

        Spacer(minLength: 0)
    }
}

#Preview {
    AccountsSheetView()
}
