//
//  Lesson5.swift
//  Spring_Pod
//
//  Created by Nahum Michael on 4/15/26.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                // First link (image + text)
                NavigationLink {
                    session1()
                } label: {
                    VStack {
                        Image("whoiam")
                        Text("click the pic")
                            .font(.caption)
                    }
                }
                
                // Second link (simple text)
                NavigationLink("Fav Media") {
                    FavMedia()
                }
                
            }
            .navigationTitle("Redirection")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
    }
}

#Preview {
    LocationView()
}
