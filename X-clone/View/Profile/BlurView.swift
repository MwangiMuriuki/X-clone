//
//  BlurView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 21/10/2023.
//

import SwiftUI

struct BlurView: UIViewRepresentable{
    func makeUIView(context: Context) -> some UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }

}
