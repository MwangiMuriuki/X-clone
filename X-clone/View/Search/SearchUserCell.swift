//
//  SearchUserCell.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct SearchUserCell: View {
    @State var fullName: String
    @State var userName: String

    var body: some View {

        HStack{
            Image("person")
                .resizable()
                .scaledToFill()
                .frame(width: 45, height: 45)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

            VStack(alignment: .leading, spacing: 5,content: {
                Text(fullName).fontWeight(.bold).foregroundStyle(.primary)
                Text(userName).fontWeight(.medium).foregroundStyle(.secondary)
            })
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)

        }
    }
}

#Preview {
    SearchUserCell(fullName: "Ernest", userName: "@ern_mwas")
}
