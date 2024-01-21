//
//  SplashScreen.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 21/1/2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        
            ZStack{
                Color.splash
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Speed Coach App")
                        .font(.title)
                    
                    Image("row")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 100)
                }
            }
        
    }
}

#Preview {
    SplashScreen()
}
