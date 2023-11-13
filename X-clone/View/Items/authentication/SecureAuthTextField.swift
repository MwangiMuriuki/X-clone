//
//  SecureAuthTextField.swift
//  X-clone
//
//  Created by Ernest Mwangi on 01/11/2023.
//

import SwiftUI

struct SecureAuthTextField: View {

    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack{
            ZStack(alignment: .leading, content: {

                if text.isEmpty{
                    Text(placeholder)
                        .foregroundStyle(.gray)
                }

                SecureField("", text: $text)
                    .frame(height: 45)
                    .foregroundStyle(.labelColorPrimary)

                Rectangle()
                    .frame(height: 1, alignment: .center)
                    .foregroundStyle(.gray)
                    .padding(.top, 40)

            })
        }
        .padding(.horizontal)
    }
}

#Preview {
    SecureAuthTextField(placeholder: "•••••••", text: .constant("") )
}
