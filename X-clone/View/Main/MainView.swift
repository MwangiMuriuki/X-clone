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
    @AppStorage("darkModeSelected") private var darkModeSelected = false


    var body: some View {

        NavigationView{
            VStack{
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {

                    VStack{
                        TopBar(x: $xOffset)
                        Home()
                    }
//                    .offset(x: xOffset + width)
//                    .onTapGesture {
//                        withAnimation{
//                            xOffset = -width
//                        }
//                    }

                    SlideMenu()
                        .shadow(color: Color.black.opacity(xOffset != 0 ? 0.1 :0), radius: 5,
                                x: 5, y: 0)
                        .offset(x : xOffset)
//                        .background(Color.black.opacity(xOffset == 0 ? 0.5 : 0))
                        .ignoresSafeArea(.all, edges: .vertical)
                        .onTapGesture {
                            withAnimation{
//                                xOffset = -width
                            }
                        }
                })
                .gesture(DragGesture().onChanged({ value in
                    if value.translation.width > 0{
                        if xOffset < 0 {
                            xOffset = -width + value.translation.width
                        }
                    }
                    else {
                        if xOffset != -width {
                            xOffset = value.translation.width
                        }
                    }
                })
                    .onEnded({ value in
                        withAnimation{
                            if -xOffset < width / 2 {
                                xOffset = 0
                            }else {
                                xOffset = -width
                            }
                        }

                    }))
            }
            .toolbar(.hidden, for: .navigationBar)
            .navigationTitle("")
        }

    }
}

#Preview {
    MainView()
}
