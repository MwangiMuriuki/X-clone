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
