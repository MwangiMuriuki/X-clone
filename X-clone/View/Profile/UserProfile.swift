//
//  UserProfile.swift
//  X-clone
//
//  Created by Ernest Mwangi on 21/10/2023.
//

import SwiftUI

struct UserProfile: View {

    @State var offset: CGFloat = 0
    @State var titleOffset: CGFloat = 0
    @State var currentTab = "Posts"
    @Namespace var animation
    @State var tabBarOffset: CGFloat = 0


    var body: some View {
        //MARK: - Main ScrollView
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15, content: {

                GeometryReader{ proxy -> AnyView in
                    let minY = proxy.frame(in: .global).minY

                    DispatchQueue.main.async {
                        self.offset = minY
                    }
                    return AnyView(
                        // MARK: - Banner
                        ZStack{
                            Image("banner")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: screenBounds().width,
                                       height: minY > 0 ? 120 + minY : 120,
                                       alignment: .center)


                            BlurView().opacity(blurViewOpacity())

                            HStack(alignment: .center, spacing: 10, content: {

                                Button(action: {}, label: {
                                    Image(systemName: "arrow.left")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundStyle(.labelColorPrimary)

                                })
                                .frame(width: 30, height: 30)


                                VStack(alignment: .leading, spacing: 3, content: {
                                    Text("Ernest")
                                        .fontWeight(.bold)
                                        .foregroundStyle(.labelColorPrimary)

                                    Text("120 Posts")
                                        .fontWeight(.regular)
                                        .foregroundStyle(.labelColorPrimary)
                                        .font(.subheadline)
                                })

                                Spacer(minLength: 0)

                                Button(action: {}, label: {
                                    Image(systemName: "magnifyingglass")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundStyle(.labelColorPrimary)
                                })
                                .frame(width: 30, height: 30)

                            })
                            .padding(.horizontal)
                            .padding(.bottom)
                            .offset(y: 120)
                            .offset(y: titleOffset > 100 ? 0 : -getTitleOffset())
                            .opacity(titleOffset < 100 ? 1 : 0)


                        }
                            .clipped()
                            .frame(height: minY > 0 ? 120 + minY : nil)
                            .offset(y: minY > 0 ? -minY : -minY < 20 ? 0 : -minY - 20)

                    )

                }
                .frame(height: 120)
                .zIndex(1)

                //MARK: - Header Section
                VStack{
                    HStack (alignment: .center, content: {
                        Image("person")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                            .padding(8)
                            .background(Color.dynamicBG.clipShape(Circle()))
                            .offset(y: offset < 0 ? getOffset() - 20 : -20)
                            .scaleEffect(getScale())

                        Spacer(minLength: 0)

                        Button(action: {}, label: {
                            Text("Edit Profile")
                                .foregroundStyle(.labelColorPrimary)
                                .fontWeight(.semibold)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Capsule().stroke(Color.labelColorPrimary, lineWidth: 1.0))
                        }).padding(.trailing)
                            
                    })
                    .padding(.top, -28)
                    .padding(.bottom, -10)


                    // MARK: - User Bio
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Ernest M. ")
                            .foregroundStyle(.primary)
                            .fontWeight(.bold)
                            .font(.title2)

                        Text("@ernestMuriuki")
                            .foregroundStyle(.secondary)
                            .fontWeight(.medium)

                        Text("Born Again Christian • Worshipper • Drummer 🥁 • Tech Enthusiast • Android Developer • iOS Developer")
                            .foregroundStyle(.primary)
                            .fontWeight(.regular)
                            .font(.system(size: 14))


                        // MARK: - More Details
                        VStack(alignment: .leading, spacing: 10, content: {
                            HStack(alignment: .center, spacing: 10, content: {
                                HStack(spacing: 3, content: {
                                    Image(systemName: "mappin.and.ellipse.circle")
                                        .resizable()
                                        .frame(width: 14, height: 14)
                                        .foregroundStyle(.gray)

                                    Text("Nairobi, Kenya")
                                        .foregroundStyle(.secondary)
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                })


                                HStack(spacing: 3, content: {
                                    Image(systemName: "balloon")
                                        .resizable()
                                        .frame(width: 8, height: 14)
                                        .foregroundStyle(.gray)

                                    Text("Born 12 January 1990")
                                        .foregroundStyle(.secondary)
                                        .fontWeight(.medium)
                                        .font(.system(size: 14))
                                })


                            })

                            HStack(spacing: 3, content: {
                                Image(systemName: "calendar")
                                    .resizable()
                                    .frame(width: 14, height: 14)
                                    .foregroundStyle(.gray)

                                Text("Joined December 2010")
                                    .foregroundStyle(.secondary)
                                    .fontWeight(.medium)
                                    .font(.system(size: 14))
                            })
                        })

                        //MARK: - Follow View
                        HStack(spacing:5) {
                            FollowView(count: 958, title: "Following")
                            FollowView(count: 386, title: "Followers")

                        }

                    })
                }

                .zIndex(-offset > 80 ? 0 : 1)
                .overlay(
                    GeometryReader { proxy -> Color in
                        let minY = proxy.frame(in: .global).minY
                        DispatchQueue.main.async {
                            self.titleOffset = minY
                        }
                        return Color.clear
                    }.frame(width: 0, height: 0), alignment: .top)

                // MARK: - Tab Bar
                VStack(spacing: 0, content: {
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 0, content: {
                            TabButton(title: "Posts", currentTab: $currentTab, animation: animation)

                            TabButton(title: "Replies", currentTab: $currentTab, animation: animation)

                            TabButton(title: "Highlights", currentTab: $currentTab, animation: animation)

                            TabButton(title: "Media", currentTab: $currentTab, animation: animation)

                            TabButton(title: "Likes", currentTab: $currentTab, animation: animation)
                        })
                    })

                    Divider()
                })
                .padding(.top, 20)
                .background(Color.dynamicBG)
                .offset(y: tabBarOffset < 90 ? -tabBarOffset + 90 : 0)
                .overlay(
                    GeometryReader { proxy -> Color in
                        let minY = proxy.frame(in: .global).minY
                        DispatchQueue.main.async {
                            self.tabBarOffset = minY
                        }
                        return Color.clear
                    }.frame(width: 0, height: 0), alignment: .top)
                .zIndex(1.0)


                // MARK: - Feed
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
        .ignoresSafeArea(.all, edges: .top)
    }


    // MARK: - Offset Calculations

    func blurViewOpacity() -> Double {
        let progress = -(offset + 20) / 100
        return Double(-offset > 20 ? progress : 0)
    }

    func getTitleOffset() -> CGFloat {
        let progress = 20 / titleOffset
        let offset = 90 * (progress > 0 && progress <= 1 ? progress : 1)
        return offset
    }

    func getOffset() -> CGFloat {
        let progress = (-offset / 80) * 20
        return progress <= 20 ? progress : 20
    }

    func getScale() -> CGFloat {
        let progress = -offset / 80
        let scale = 1.8 - (progress < 1.0 ? progress : 1)
        return scale < 1 ? scale : 1
    }
}

#Preview {
    UserProfile()
}
