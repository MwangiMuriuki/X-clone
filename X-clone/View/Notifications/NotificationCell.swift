//
//  NotificationCell.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct NotificationCell: View {

    @State var width = UIScreen.main.bounds.width

    var body: some View {
        VStack{

            HStack(alignment: .top, content: {
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                    .foregroundStyle(.blue)

                VStack(alignment: .leading, content: {
                    Image("person")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())

                    Text("fullName ")
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                    +

                    Text("Notification Action")
                        .fontWeight(.medium)
                        .foregroundStyle(.gray)
                })

                Spacer(minLength: 0)
            })
            .padding(.leading, 10)

            // Alternative for Divider()
            Rectangle().frame(width: width - 10, height: 1, alignment: .center)
                .foregroundStyle(.separator)

        }
    }
}

#Preview {
    NotificationCell()
}
