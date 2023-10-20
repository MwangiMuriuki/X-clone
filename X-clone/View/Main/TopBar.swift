//
//  TopBar.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct TopBar: View {
    @State var width = UIScreen.main.bounds.width

    var body: some View {
        VStack{
            HStack(alignment: .center, content: {
                Button(action: {}, label: {
                    Image("person")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                })

                Spacer(minLength: 0)

                Image("TwitterX")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                    .padding(.trailing)

                Spacer(minLength: 0)

            }).padding()

            // Alternative for Divider()
            Rectangle().frame(width: width - 10, height: 1, alignment: .center)
                .foregroundStyle(.separator)
        }
    }
}

#Preview {
    TopBar()
}
