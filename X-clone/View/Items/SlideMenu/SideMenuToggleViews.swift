//
//  SideMenuToggleViews.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import SwiftUI

struct SideMenuToggleViews: View {
    @State var show = false
    @State var title : String
    
    var body: some View {
        HStack(spacing:0) {
            Text(title)
                .fontWeight(.bold)
                .font(.subheadline)
                .foregroundStyle(.primary)

            Spacer(minLength: 0)

            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }, label: {
                Image(systemName: show ?  "chevron.down" : "chevron.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                    .foregroundStyle(.gray)
            })
        }
    }
}

#Preview {
    SideMenuToggleViews(title: "Title")
}
