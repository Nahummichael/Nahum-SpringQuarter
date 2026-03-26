//
//  ContentView.swift
//  Spring_Pod
//
//  Created by Nahum Michael on 3/18/26.
//

import SwiftUI

struct session1: View {
    var body: some View {
        VStack {
            Image(systemName: "star")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Nahum Michael")
            
            
            Image("better pic")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 150)

                
                
            
            
            Text("I am born in Oakland, and raised in Pinole, I proud of who i am, and what makes me. I have an interest in both video games and video game creation, and so i aspire to be able to create my own game at some point in the future.")
            
            
            
            
            
            
        }
        .padding()
    }
}

#Preview {
    session1()
}
