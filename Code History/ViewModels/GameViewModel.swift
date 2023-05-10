//
//  GameViewModel.swift
//  Code History
//
//  Created by Hayley Dobbs on 10/05/2023.
//

import Foundation
import SwiftUI
 
// 1
class GameViewModel: ObservableObject {
 
  // MARK: - Published properties
  // 2
  @Published private var game = Game()
 
  // MARK: - Internal properties
  // 3
  var currentQuestion: Question {
     game.currentQuestion
  }
  // 4
  var questionProgressText: String {
    "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
  }
}