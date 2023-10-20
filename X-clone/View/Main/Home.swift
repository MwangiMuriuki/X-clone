//
//  Home.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

struct Home: View {
    @State var selectedIndex = 0
    @State var showCreatePost = false
    @State var textString = "Testing"

    var body: some View {
        VStack{
            ZStack{
                TabView{
                    FeedView()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem {
                            if (selectedIndex == 0){
                                Image(systemName: "house")
                                    .renderingMode(.template)
                                    .foregroundStyle(.black)
                            }
                            else{
                                Image(systemName: "house")
                            }
                        }
                        .tag(0)

                    SearchView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem {
                            if (selectedIndex != 1){
                                Image(systemName: "magnifyingglass")
                                    .renderingMode(.template)
                                    .foregroundStyle(.black)
                            }
                            else{
                                Image(systemName: "magnifyingglass")
                            }
                        }
                        .tag(1)

                   NotificationsView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem {
                          Image(systemName: "bell")
                        }
                        .tag(2)

                    MessagesView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem {
                            Image(systemName: "envelope")
                        }
                        .tag(3)
                }

                VStack{
                    Spacer()

                    HStack{
                        Spacer()

                        Button(action: {
                            self.showCreatePost.toggle()
                        }, label: {
                            Image(systemName: "plus")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color("twitter_blue", bundle: nil))
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        })
                    }
                    .padding()
                }
                .padding(.bottom, 65)
            }
            .sheet(isPresented: $showCreatePost, content: {
                CreatePostView(postText: textString)
            })
        }
    }
}

#Preview {
    Home()
}
