//
//  TopBar.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct TopBar: View {

    @Binding var x : CGFloat
    @State var width = UIScreen.main.bounds.width

    var body: some View {
        VStack{
            HStack(alignment: .center, content: {
                Button(action: {
                    withAnimation{
                        x = 0
                    }
                }, label: {
                    Image("person")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                })

                Spacer(minLength: 0)

                Image("Premium")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 36, height: 36)
                    .padding(.trailing)

                Spacer(minLength: 0)

            }).padding()

            // Alternative for Divider()
            Rectangle().frame(width: width - 10, height: 1, alignment: .center)
                .foregroundStyle(.separator)
        }
    }
}

//#Preview {
//    TopBar(offset: (.constant(0)))
//}
