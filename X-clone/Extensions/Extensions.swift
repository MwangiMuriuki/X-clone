//
//  Extensions.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import UIKit
import SwiftUI

extension UIApplication {

    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }

}

extension View {

    func screenBounds() -> CGRect {
        return UIScreen.main.bounds
    }
}
