//
//  FollowView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct FollowView: View {
    var count: Int
    var title: String

    var body: some View {
        HStack(spacing:5) {
            Text("\(count)").fontWeight(.bold).foregroundStyle(.primary)
            Text(title).fontWeight(.medium).foregroundStyle(.secondary)
            
        }.padding(.top, 8)
    }
}

#Preview {
    FollowView(count: 5, title: "Title")
}
