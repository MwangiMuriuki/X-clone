//
//  CustomAuthTextField.swift
//  X-clone
//
//  Created by Ernest Mwangi on 01/11/2023.
//

import SwiftUI

struct CustomAuthTextField: View {

    var placeholder: String
    @Binding var text: String

    var body: some View {
        VStack{
            ZStack(alignment: .leading, content: {

                if text.isEmpty{
                    Text(placeholder)
                        .foregroundStyle(.gray)
                }

                TextField("", text: $text)
                    .frame(height: 45)
                    .foregroundStyle(.labelColorPrimary)
                    .padding(.bottom)

                Rectangle()
                    .frame(height: 1, alignment: .center)
                    .foregroundStyle(.gray)
                    .padding(.top)

            })
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomAuthTextField(placeholder: "Enter Something", text: .constant("") )
}
