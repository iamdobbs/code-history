//
//  Question.swift
//  Code History
//
//  Created by Hayley Dobbs on 09/05/2023.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int

    static var allQuestions = [
        Question(questionText: "What musical instrument did I study at university?", possibleAnswers: ["Guitar", "Voice", "Drums", "Bass"], correctAnswerIndex: 2),
        Question(questionText: "Where did I go on my last trip?", possibleAnswers: ["Hvar", "NYC", "Rome", "Madrid"], correctAnswerIndex: 1),
        Question(questionText: "What month did I complete my studies at Makers Academy?", possibleAnswers: ["Jan", "Feb", "Mar", "Apr"], correctAnswerIndex: 3),
        Question(questionText: "What was my final engineering project called?", possibleAnswers: ["Tenant Talk", "Land Lord", "Home Hunt", "Flat Finds"], correctAnswerIndex: 0)
        Question(questionText: "What stack did I mention in my technical experience at Makers Academy?", possibleAnswers: ["MERN", "LAMP", "MEAN", "MEVN"], correctAnswerIndex: 0)
    ]
    
    
}
