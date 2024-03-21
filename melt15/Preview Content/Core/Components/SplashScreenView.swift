//
//  SplashScreenView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI


struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 1.1
    @State private var opacity = 0.3
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                
                Color.steelBlue
                    .ignoresSafeArea(.all)
                Image("1")
            }
            .scaleEffect(size)
            .ignoresSafeArea()
//            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 4)) {
                    self.size = 1.6
                    self.opacity = 1.5
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                    self.isActive = true
                }
            }
        }
        
    }
}

extension Color {
    static let steelBlue = Color(red: 92 / 255, green: 108 / 255, blue: 125 / 255)
}


struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
