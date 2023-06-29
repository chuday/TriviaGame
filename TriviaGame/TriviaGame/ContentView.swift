//
//  ContentView.swift
//  TriviaGame
//
//  Created by Mikhail Chudaev on 27.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var triviaManager = TrivialManager()
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Trivial Game")
                        .lilacTitle()
                    
                    Text("Are you ready to test out your trivia skills?")
                        .foregroundColor(Color("AccentColor"))
                }
                
                NavigationLink {
                    TrivialView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Let's go!")
                }
            }
            .frame(maxWidth:  .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.984, green: 0.929, blue: 0.847))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
