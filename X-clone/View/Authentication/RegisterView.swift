//
//  RegisterView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 01/11/2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            ZStack{
                HStack(content: {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
                .frame(width: (screenBounds().width * 0.9), alignment: .leading)

            VStack{
                
            }

        }
    }
}

#Preview {
    RegisterView()
}
