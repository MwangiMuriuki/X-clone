//
//  FeedView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false,
                   content: {
            VStack(spacing: 18){

                PostCellView(post: "This is a post that comes with an image", postImage: "person")

                Divider()
                
                ForEach(1...30, id: \.self) { posts in
                    PostCellView(post: sampleText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)

        })
    }
}

#Preview {
    FeedView()
}
