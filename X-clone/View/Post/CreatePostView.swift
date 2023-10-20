//
//  CreatePostView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

struct CreatePostView: View {
    @State var postText = ""

    var body: some View {
        VStack{
            // MARK: - Top View
            HStack{
                //MARK: - Cancel Button
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Cancel")
                })

                Spacer()

                // MARK: - Post Button
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Post")
                        .frame(width: 100, height: 40)
                })
                .background(Color("twitter_blue"))
                .foregroundStyle(.white)
                .clipShape(Capsule())
            }

            // MARK: - Text Field
            MultilineTextField(text: $postText)
        }.padding()
    }
}

#Preview {
    CreatePostView()
}
