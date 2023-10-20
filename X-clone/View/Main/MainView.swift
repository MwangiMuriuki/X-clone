//
//  MainView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct MainView: View {
    @State var width = UIScreen.main.bounds.width - 90
    @State var xOffset = -UIScreen.main.bounds.width + 90

    var body: some View {

        NavigationView{
            VStack{
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {

                    VStack{
                        TopBar(x: $xOffset)
                        Home()
                    }

                    SlideMenu()
//                        .shadow(color: Color.black.opacity(xOffset != 0 ? 0.1 :0),
//                                radius: 5,
//                                x: 5, y: 5)
                        .offset(x : xOffset)
//                        .background(Color.black.opacity(xOffset == 0 ? 0.5 : 0))
                        .background(Color("slideMenuBG", bundle: nil).opacity(xOffset == 0 ? 0.5 : 0))
                        .ignoresSafeArea(.all, edges: .vertical)
                        .shadow(color: Color("slideMenuBG", bundle: nil).opacity(xOffset != 0 ? 0.1 :0),
                            radius: 5,
                            x: 5, y: 5)
                        .onTapGesture {
                            withAnimation{
                                xOffset = -width
                            }
                        }
                })
            }
            .toolbar(.hidden, for: .navigationBar)
            .navigationTitle("")
        }


    }
}

#Preview {
    MainView()
}
