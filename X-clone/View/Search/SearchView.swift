//
//  SearchView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

struct SearchView: View {
    @State var sText = ""
    @State var isEditing = false
    
    var body: some View {
        VStack {
            SearchBarView(searchText: $sText, isEditing: $isEditing)
                .padding(.horizontal)

            if isEditing{
                List(0..<20) { users in
                    SearchUserCell(fullName: randomAlphanumericString(7), userName: "@" + randomAlphanumericString(6))
                }
            }
            else{
                List(0..<20) { posts in
                    SearchCellView(tag: "SwiftUI", postNum: String(Int.random(in: 1..<999)))
                }
            }

        }
        .padding(.top, 5)
        .padding(.horizontal)
        .zIndex(0)
    }
}

#Preview {
    SearchView()
}
