//
//  Movie.swift
//  cw-9
//
//  Created by ahmad alburaimi on 02/01/2021.
//
import Foundation


struct Movie: Identifiable {
    let name: String
    let characters: [String]
    
    let id = UUID()
}

let movies = [
    Movie(name: "toystory", characters: ["woody","buzz lightyear","forky"]),
    Movie(name: "cars2", characters: ["mcqueen","mater","lewis hamilton"]),
    Movie(name: "despicableme2", characters: ["Gru","lucy","bob"])
]
