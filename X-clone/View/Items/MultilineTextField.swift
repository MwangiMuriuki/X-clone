//
//  MultilineTextField.swift
//  X-clone
//
//  Created by Ernest Mwangi on 18/10/2023.
//

import SwiftUI

struct MultilineTextField: UIViewRepresentable{
    @Binding var text: String

    func makeCoordinator() -> MultilineTextField.Coordinator {
        return MultilineTextField.Coordinator(parent1: self)
    }
    
    func makeUIView(context: Context) -> some UITextView {
        let textView = UITextView()
        textView.isEditable = true
        textView.text = "What's happening?"
        textView.textColor = .gray
        textView.isUserInteractionEnabled = true
//        textView.font = UIFont(name: "Avenir-Next-Medium", size: 20)
        textView.font = .systemFont(ofSize: 18, weight: .medium)
        textView.delegate = context.coordinator
        return textView

    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }

    class Coordinator: NSObject, UITextViewDelegate{
        var parent: MultilineTextField

        init(parent1: MultilineTextField) {
            parent = parent1
        }

        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }

        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
    }

}
