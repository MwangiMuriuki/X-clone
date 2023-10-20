//
//  PostCellView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

struct PostCellView: View {
    var post: String
    var postImage: String?
    @State var name = "Ernest "
    @State var username = "@ern_est"

    var body: some View {
        VStack{
            //MARK: - Top Stack
            HStack(alignment: .top, spacing: 10, content: {
                Image("person")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 10, content: {
                    (
                        Text(name)
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)

                        +

                        Text(username)
                            .fontWeight(.medium)
                            .foregroundStyle(.gray)
                    )

                    // MARK: - Post Text
                    Text(sampleText)
                        .frame(maxHeight: 80, alignment: .top)
                        .fontWeight(.regular)
                        .font(.callout)

                    // MARK: - Post Image If Available
                    if let imageInPost = postImage {
                        GeometryReader{ proxy in
                            Image(imageInPost)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(
                                    width: proxy.frame(in: .global).width,
                                    height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }

                })
            })

            //MARK: - Bottom Stack
            HStack(alignment: .center, spacing: 50, content: {
                //MARK: - Comments Button
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 18, height: 16)
                }).foregroundStyle(.gray)

                //MARK: - Repost Button
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .resizable()
                        .frame(width: 20, height: 16)
                }).foregroundStyle(.gray)

                //MARK: - Likes Button
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 18, height: 16)
                }).foregroundStyle(.gray)


                //MARK: - Share Button
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 16, height: 18)
                }).foregroundStyle(.gray)

            }).padding(.top, 4)
        }
    }
}

#Preview {
    PostCellView(post: sampleText)
}

var sampleText = "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."
