//
//  MessagesView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<20) {items in
                    MessageListCell(fullName: String(randomAlphanumericString(8)),
                                    userName: String(randomAlphanumericString(20)),
                                    date: "29 Apr",
                                    message: sampleText)
                }
            }
//            .padding(.top)
//            .padding(.horizontal)
//            .zIndex(0)
        }

        .padding(.top, 5)
        .padding(.horizontal)
        .zIndex(0)
    }
}

#Preview {
    MessagesView()
}
