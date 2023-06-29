//
//  Extensions.swift
//  TriviaGame
//
//  Created by Mikhail Chudaev on 27.06.2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
