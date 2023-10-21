//
//  MenuButton.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct MenuButton: View {
    var buttonLabel: String

    var body: some View {
        HStack(spacing: 25) {
            Image(buttonLabel)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
                .foregroundStyle(.foreground)

//            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                Text(buttonLabel)
//                    .fontWeight(.bold)
//                    .font(.headline)
//                    .foregroundStyle(.primary)
//            })

            Text(buttonLabel)
                .fontWeight(.bold)
                .font(.headline)
                .foregroundStyle(.foreground)
        }
    }
}

#Preview {
    MenuButton(buttonLabel: "Premium")
}
