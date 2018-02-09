//
//  main.swift
//  FogCreek
//
//  Created by Michael Cordero on 2/9/18.
//  Copyright © 2018 codec software. All rights reserved.
//

/*
 Fog Creek challenge
 Sort the characters in the following string:
 abcdefghijklmnopqrstuvwxyz_
 by the number of times the character appears in the following text (descending): */

import Foundation

let text: String = Input.value
let alphabet: String = "abcdefghijklmnopqrstuvwxyz_"
let zeros: [Int] = Array(repeating: 0, count: alphabet.count)   //placeholder values
var alphabet_count_map: [Character : Int] = Dictionary(uniqueKeysWithValues: zip(alphabet.map( { $0 } ), zeros  ) )


for Character in text.map( { $0 }) {
    if alphabet_count_map[Character] != nil { alphabet_count_map[Character]! += 1 } else { continue }
}

var sorted: Array = alphabet_count_map.sorted(by: {  $0.value > $1.value } )
sorted.removeSubrange( sorted.index(where: { $0.key == "_" } )!..<sorted.count )
let solution: String = String(sorted.map( { $0.key } ))

print("Solution: " + solution)




