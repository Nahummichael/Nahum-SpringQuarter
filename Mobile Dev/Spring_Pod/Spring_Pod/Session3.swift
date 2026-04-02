import SwiftUI

struct session3: View {
    var body: some View {
        VStack{
            Text("I am goated")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Image("better pic")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 150)
        }
            HStack{
                Text("this basketball is quite hot")
                    .padding(.leading, 10)
                    .font(.headline)
                    .background(Color.white)
                    .shadow(color: .gray, radius: 5, x:5, y:3)
                
                Image("fbasketball")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 150)
            }
            
            ZStack{
                Image("fbasketball")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1300, height: 160)
                
                Image("better pic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                    .offset(x: 12, y: 50)
            }
            
        
    }
}

#Preview {
 session3()
}
