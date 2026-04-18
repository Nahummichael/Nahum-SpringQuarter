//
//  Lesson5.swift
//  Spring_Pod
//
//  Created by Nahum Michael on 4/15/26.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        
        
       
            NavigationStack{
                VStack() {
                    
                    NavigationLink(){
                        session1()
                    } label: {
                        VStack{
                            Image("whoiam")
                            Text("click the pic")
                                .font(.caption)
                        }
                        
                       
                        
                        }}
                
                    Spacer()
                    
                    
                    
                    
                    
                        .navigationTitle(Text("Redirection"))
                        .navigationBarTitleDisplayMode(.inline)
                    
                }
                
            }
            
        
    }


#Preview {
    NavigationView()
}
