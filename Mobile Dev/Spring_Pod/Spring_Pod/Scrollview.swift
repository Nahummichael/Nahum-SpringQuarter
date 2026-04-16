//
//  Scrollview.swift
//  Spring_Pod
//
//  Created by Nahum Michael on 4/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
        session1()
                .tabItem{
                    Label("profile", systemImage: "person")
                }
            
            
        FavMedia()
                .tabItem {
                    Label("Fav Media", systemImage: "heart")
                }
        
        }
    }
}


#Preview {
ContentView()
}
