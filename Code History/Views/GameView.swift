//
//  ContentView.swift
//  Code History
//
//  Created by Hayley Dobbs on 05/05/2023.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
