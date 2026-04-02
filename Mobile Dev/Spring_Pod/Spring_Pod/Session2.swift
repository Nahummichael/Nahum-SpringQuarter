import SwiftUI

struct session2: View {
    var body: some View {
        VStack{
            Text("I am goated")
            
            Image("better pic")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 150)
                .cornerRadius(70.0)
            
            HStack{
                Text("this basketball is quite hot")
                
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
}

#Preview {
 session2()
}
