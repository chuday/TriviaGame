//
//  AnswerRow.swift
//  TriviaGame
//
//  Created by Mikhail Chudaev on 27.06.2023.
//

import SwiftUI

struct AnswerRow: View {
    
    @EnvironmentObject var triviaManager: TrivialManager
    
    @State private var isSelected = false

    var answer: Answer    
    var green = Color(hue: 0.4, saturation: 0.7, brightness: 0.7)
    var red = Color(red: 0.7, green: 0.1, blue: 0.1)
    
    var body: some View {
        
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviaManager.answerSelected ? (isSelected ? Color("AccentColor") : .gray) : Color("AccentColor"))
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !triviaManager.answerSelected {
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
            }
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Simple", isCorrect: false))
            .environmentObject(TrivialManager())
    }
}
