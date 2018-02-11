//
//  main.swift
//  FogCreek
//
//  Created by Michael Cordero on 2/9/18.
//  Copyright © 2018 codec software. All rights reserved.
//
// Author's note: line 30 may be confusing, because the collection starts out as an
// dictionary, but after the sorted() operation, the collection is turned into an array.
//[Rationale for High Order Functions on Collections that return Arrays]
//(https://github.com/apple/swift/blob/master/docs/StdlibRationales.rst#high-order-functions-on-collections-return-arrays)

/*
 Fog Creek challenge
 Sort the characters in the following string:
 abcdefghijklmnopqrstuvwxyz_
 by the number of times the character appears in the following text (descending): */

import Foundation

// variable declarations
let text: String = Input.value
let characters: String = "abcdefghijklmnopqrstuvwxyz_"
let zeros: [Int] = Array(repeating: 0, count: characters.count)   //placeholder values
var character_occurrence_map: [Character : Int] = Dictionary(uniqueKeysWithValues: zip(characters.map( { $0 } ), zeros  ) )

// operations
text.map( { $0 } ).forEach( { character_occurrence_map[$0]! += 1 } )
var sorted: [(key: Character, value: Int)] = character_occurrence_map.sorted(by: {  $0.value > $1.value } )
sorted.removeSubrange( sorted.index(where: { $0.key == "_" } )!..<sorted.count )
let solution: String = String(sorted.map( { $0.key } ))

// output
print("solution: " + solution)




