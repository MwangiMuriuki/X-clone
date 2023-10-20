//
//  SlideMenu.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct SlideMenu: View {
    @State var width = UIScreen.main.bounds.width
    @State var showMiniMenu = false

    var buttonImages = ["person", "Premium", "Bookmarks", "Lists", "Spaces", "Monetization"]
    var buttonLabels = ["Profile", "Premium", "Bookmarks", "Lists", "Spaces", "Monetization"]

    var body: some View {
        VStack(alignment: .leading, content: {

            //MARK: - Top view
            HStack(spacing:0) {
                Image("person")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 54, height: 54)
                    .clipShape(Circle())

                Spacer(minLength: 0)

                Button(action: {}, label: {
                    Image(systemName: "ellipsis.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                        .foregroundStyle(.foreground)
                })
            }
            .padding(.leading, 20)
            .padding(.trailing, 10)

            //MARK: - User Details View
            VStack(alignment: .leading, spacing: 5,content: {
                Text("Full Name").fontWeight(.bold).foregroundStyle(.primary)
                Text("@userName").fontWeight(.medium).foregroundStyle(.secondary)
            })
            .padding(.top, 5)
            .padding(.leading, 20)
            .padding(.trailing, 10)


            //MARK: - Follow View
            HStack(spacing:5) {
                FollowView(count: 958, title: "Following")
                FollowView(count: 386, title: "Followers")

            }
            .padding(.top, 8)
            .padding(.leading, 20)
            .padding(.trailing, 10)

            //MARK: - Divider
            Divider()
                .foregroundStyle(.separator)
                .padding(.top, 10)
                .padding(.leading, 10)
                .padding(.trailing, 10)

            //MARK: - Scrolling Section
            ScrollView(.vertical) {
                //MARK: - Menu Items Section
                HStack{
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach (buttonLabels, id:\.self){label in
                            MenuButton(buttonLabel: label)
                        }
                    }
                    Spacer(minLength: 0)
                }
                .padding(.top, 20)
                .padding(.leading, 20)
                .padding(.trailing, 20)

                //MARK: - Divider
                Divider()
                    .foregroundStyle(.separator)
                    .padding(.top, 10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)


                //MARK: - Toggle Section
                VStack(spacing: 20) {
                    SideMenuToggleViews(show: showMiniMenu, title: "Professional Tools")
                    SideMenuToggleViews(show: showMiniMenu, title: "Settings and Support")
                }
                .padding(.top, 20)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }.zIndex(0)


            Spacer(minLength: 0)

            //MARK: - Last Section
            HStack(spacing:0) {
                Button(action: {}, label: {
                    Image(systemName: "moon.stars")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                        .foregroundStyle(.foreground)
                })
            }
            .padding(.leading, 20)
            .padding(.trailing, 10)

        })
        .padding(.horizontal)
    }
}

#Preview {
    SlideMenu()
}
