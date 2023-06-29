//
//  Answer.swift
//  TriviaGame
//
//  Created by Mikhail Chudaev on 27.06.2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
