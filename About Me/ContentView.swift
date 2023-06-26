//
//  ContentView.swift
//  About Me
//
//  Created by Asmita De on 6/25/23.
//

import SwiftUI

struct AboutMeView: View {
    @State private var showFacts = false
    
    var body: some View {
        VStack {
            Text("About Me")
                .font(.title)
                .padding()
            
            Image("beach")
                .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200) // Adjust the frame size as needed
                    .padding()
            
            VStack {
                Text("Asmita De!")
                    .padding()
                
                Button(action: {
                    showFacts.toggle()
                }) {
                    Text("Facts")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.brown)
                        .cornerRadius(10)
                }
                
                if showFacts {
                    FactView(fact: "I am an only child")
                    FactView(fact: "I like chocolate over any other flavor")
                    FactView(fact: "I am 17 years old")
                    FactView(fact: "I'm learning how to juggle")
                    FactView(fact: "I like going to the beach")
                }
            }
        }
    }
}

struct FactView: View {
    var fact: String
    
    var body: some View {
        Text(fact)
            .padding()
    }
}

struct ContentView: View {
    var body: some View {
        AboutMeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
