//
//  SlideMenu.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct SlideMenu: View {
    @State var width = UIScreen.main.bounds.width
    @State var showToolsMenu = false
    @State var showSupportMenu = false
    @State var showAccountsBottomSheet = false

    var buttonLabels = ["Profile", "Premium", "Bookmarks", "Lists", "Spaces", "Monetization"]
    var toolsLabels = ["Ads"]
    var supportLabels = ["Settings and privacy", "Help Center", "Purchases"]

    var edges = UIApplication.shared.windows.first?.safeAreaInsets

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

                // MARK: - Show Bottom Sheet Button
                Button(action: {
                    self.showAccountsBottomSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                        .foregroundStyle(.foreground)
                })
                .sheet(isPresented: $showAccountsBottomSheet, content: {
                    AccountsSheetView()
                        .presentationDetents([.fraction(0.3)])
                        .presentationDragIndicator(.visible)
                        .presentationCornerRadius(34)
                })
            }
//            .padding(.leading, 10)
//            .padding(.trailing, 10)

            //MARK: - User Details View
            VStack(alignment: .leading, spacing: 5,content: {
                Text("Full Name").fontWeight(.bold).foregroundStyle(.primary)
                Text("@userName").fontWeight(.medium).foregroundStyle(.secondary)
            })
            .padding(.top, 5)
//            .padding(.leading, 20)
//            .padding(.trailing, 10)


            //MARK: - Follow View
            HStack(spacing:5) {
                FollowView(count: 958, title: "Following")
                FollowView(count: 386, title: "Followers")

            }
            .padding(.top, 8)
//            .padding(.leading, 20)
//            .padding(.trailing, 10)

            //MARK: - Divider
            Divider()
                .foregroundStyle(.separator)
                .padding(.top, 10)
//                .padding(.leading, 10)
//                .padding(.trailing, 10)

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
//                .padding(.leading, 20)
//                .padding(.trailing, 20)

                //MARK: - Divider
                Divider()
                    .foregroundStyle(.separator)
                    .padding(.top, 10)
//                    .padding(.leading, 10)
//                    .padding(.trailing, 10)


                //MARK: - Toggle Section
                VStack(spacing: 20) {

                    // MARK: - Professional Tools

                    //Title
                    HStack(spacing:0) {
                        Text("Professional Tools")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .foregroundStyle(.primary)

                        Spacer(minLength: 0)

                        Button(action: {
                            withAnimation {
                                self.showToolsMenu.toggle()
                            }
                        }, label: {
                            Image(systemName: showToolsMenu ?  "chevron.up" : "chevron.down")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .clipShape(Circle())
                                .foregroundStyle(.primary)
                        })
                    }

                    // List
                    HStack{
                        VStack(alignment: .leading, spacing: 20) {
                            ForEach (toolsLabels, id:\.self){label in
                                MenuButton(buttonLabel: label)
                            }
                        }
                        Spacer(minLength: 0)
                    }
                    .opacity(showToolsMenu ? 1 : 0)
                    .frame(height: showToolsMenu ? nil : 0)


                    // MARK: - Settings and Support
                    //Title
                    HStack(spacing:0) {
                        Text("Settings and Support")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .foregroundStyle(.primary)

                        Spacer(minLength: 0)

                        Button(action: {
                            withAnimation {
                                self.showSupportMenu.toggle()
                            }
                        }, label: {
                            Image(systemName: showSupportMenu ?  "chevron.up" : "chevron.down")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .clipShape(Circle())
                                .foregroundStyle(.primary)
                        })
                    }

                    //List
                    HStack{
                        VStack(alignment: .leading, spacing: 20) {
                            ForEach (supportLabels, id:\.self){label in
                                MenuButton(buttonLabel: label)
                            }
                        }
                        Spacer(minLength: 0)
                    }
                    .opacity(showSupportMenu ? 1 : 0)
                    .frame(height: showSupportMenu ? nil : 0)

                }
                .padding(.top, 20)
//                .padding(.leading, 20)
//                .padding(.trailing, 20)
            }.zIndex(0)


            Spacer(minLength: 0)

            //MARK: - Last Section
            HStack(spacing:0) {
                Button(action: {}, label: {
                    Image(systemName: "moon.stars")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                        .clipShape(Circle())
                        .foregroundStyle(.foreground)
                })
            }
//            .padding(.leading, 20)
//            .padding(.trailing, 10)

        })
        .padding(.horizontal)
        .padding(.top, edges!.top == 0 ? 15 : edges?.top)
        .padding(.bottom, edges!.top == 0 ? 15 : edges?.bottom)
        .frame(width: width - 90)
        .background(Color("slideMenuBG", bundle: nil))
        .ignoresSafeArea(.all, edges: .vertical)

        Spacer(minLength: 0)
    }
}

#Preview {
    SlideMenu()
}
