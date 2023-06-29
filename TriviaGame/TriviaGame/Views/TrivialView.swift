//
//  TrivialView.swift
//  TriviaGame
//
//  Created by Mikhail Chudaev on 27.06.2023.
//

import SwiftUI

struct TrivialView: View {
    
    @EnvironmentObject var triviaManager: TrivialManager

    var body: some View {
        
        if triviaManager.reachedEnd {
            
            VStack(spacing: 20) {
                
                Text("Trivas Game")
                    .lilacTitle()
                
                Text("Congratulatons")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.984, green: 0.929, blue: 0.847))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TrivialView_Previews: PreviewProvider {
    static var previews: some View {
        TrivialView()
            .environmentObject(TrivialManager())
    }
}
