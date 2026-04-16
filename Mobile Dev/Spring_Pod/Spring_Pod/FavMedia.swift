//
//  FavMedia.swift
//  Spring_Pod
//
//  Created by Nahum Michael on 4/8/26.
//

import SwiftUI

struct FavMedia: View {
    var body: some View {
        ScrollView(){
            VStack(){
                Text("My favorite movie")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                
                Image("Black Panther")
                
                
                Text("My favorite game")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                
                Image("cyberpunk")
                
                
                Text("My favorite show")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                
                Image("Tensura")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 700, height:450 )
            }
        }
        
    }
}

#Preview {
    FavMedia()
}
