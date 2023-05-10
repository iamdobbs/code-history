//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Hayley Dobbs on 10/05/2023.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
