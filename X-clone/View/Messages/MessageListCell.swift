//
//  MessageListCell.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct MessageListCell: View {
    @State var width = UIScreen.main.bounds.width
    @State var fullName : String
    @State var userName : String
    @State var space = " "
    @State var dot = "•"
    @State var date : String
    @State var message : String

    var body: some View {
        VStack{
            HStack(alignment: .top ,content: {
                Image("person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                VStack(alignment: .leading, spacing: 5,content: {

                    // MARK: - Top Items
                    HStack{
                        Text(fullName).fontWeight(.bold).foregroundStyle(.primary)

                        Text(userName)
                            .fontWeight(.medium)
                            .foregroundStyle(.secondary)
                            .lineLimit(1)

                        Text(dot).fontWeight(.medium).foregroundStyle(.secondary)

                        Text(date)
                            .fontWeight(.medium)
                            .foregroundStyle(.secondary)
                            .padding(.trailing, 10)
                    }

                    // MARK: - Notification Message
                    Text(message)
                        .frame(maxHeight: 54, alignment: .top)
                        .fontWeight(.regular)
                        .font(.callout)
                        .foregroundStyle(.black)
                        .padding(.trailing, 10)
                })
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            })

            Spacer()

            // Alternative for Divider()
//            Rectangle().frame(width: width - 10, height: 1, alignment: .center)
//                .foregroundStyle(.separator)
        }
    }
}

#Preview {
    MessageListCell(fullName: "John Doe", userName: "@john_doe", date: "2nd Oct", message: sampleText)
}
