//
//  NotificationsView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack{
            ScrollView(.vertical) {
                ForEach(0..<20) {items in
                    NotificationCell()
                }
            }
        }
        .padding(.top, 5)
        .padding(.horizontal)
        .zIndex(0)
    }
}

#Preview {
    NotificationsView()
}
