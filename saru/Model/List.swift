//
//  List.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/15.
//
import Foundation

struct List {
    let english: String
    let japanese: String
    let soundName: String

    init(e: String, j: String, s:String) {
        english = e
        japanese = j
        soundName = s
    }
}
