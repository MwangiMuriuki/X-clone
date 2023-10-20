//
//  RandomString.swift
//  X-clone
//
//  Created by Ernest Mwangi on 20/10/2023.
//

import Foundation

func randomAlphanumericString(_ length: Int) -> String {
   let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
   var randomString = ""
   for _ in 0..<length {
      let randomIndex = Int.random(in: 0..<letters.count)
      let randomCharacter = letters[letters.index(letters.startIndex, offsetBy: randomIndex)]
      randomString.append(randomCharacter)
   }
   return randomString
}
