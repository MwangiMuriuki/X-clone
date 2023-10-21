//
//  TabButton.swift
//  X-clone
//
//  Created by Ernest Mwangi on 21/10/2023.
//

import SwiftUI

struct TabButton: View {

    var title: String
    @Binding var currentTab: String
    var animation: Namespace.ID

    var body: some View {
        Button(action: {}, label: {
            LazyVStack(spacing: 12, content: {
                Text(title)
                    .fontWeight(.bold)
                    .foregroundStyle(currentTab == title ? .labelColorPrimary : .labelColorSecondary)
                    .padding(.horizontal)

                if currentTab == title {
                    Capsule()
                        .fill(Color.blue)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                }
                else {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
            })
        })

    }
}

//#Preview {
//    TabButton(title: "Title", currentTab: .constant(""))
//}
