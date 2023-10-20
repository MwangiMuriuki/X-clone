//
//  SearchCellView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct SearchCellView: View {

    var tag = "Hello"
    var postNum = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text(tag).fontWeight(.heavy)
            Text(postNum + " posts")
        })
    }
}

#Preview {
    SearchCellView()
}
