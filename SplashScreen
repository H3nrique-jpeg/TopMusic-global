//
//  SplashScreen.swift
//  TopMusic
//
//  Created by VICTOR FERNANDES OHAND on 09/10/26.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            // Redireciona para a tela principal do seu app
            ContentView()
        } else {
            ZStack {
                Color.black // Cor de fundo da splash screen
                    .ignoresSafeArea()
                
                VStack(spacing: 16) {
                    Image(systemName: "globe") // Substitua pelo nome do seu asset
                        .font(.system(size: 80))
                        .foregroundColor(.blue)
                    
                    Text("TopMusic")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    // Animação da logo aumentando e surgindo
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.0
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                // Tempo de exibição da splash screen antes de ir para a ContentView
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
