//
//  ScoreView.swift
//  Code History
//
//  Created by Hayley Dobbs on 10/05/2023.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("???%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                Text("??? ✅")
                Text("??? ❌")
                    .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(), label: {
                    BottomTextView(str: "Try again?")
                })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
