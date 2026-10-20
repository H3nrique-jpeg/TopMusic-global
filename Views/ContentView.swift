//
//  ContentView.swift
//  TopMusic-global
//
//  Created by HENRIQUE SILVA PEREIRA DOS SANTOS on 20/10/26.
//

import SwiftUI

struct ContentView: View {
    
    let artistas = [
        Artista(
            id: 420368335,
            nome: "Tyler, The Creator",
            imagem: "",
            albuns: [],
            musicas: []
        )
    ]
    
    var body: some View {
        
        NavigationStack {
            
            List(artistas) { artista in
                
                NavigationLink {
                    ArtistaView(artista: artista)
                } label: {
                    Text(artista.nome)
                }
            }
            
            .navigationTitle("Meu Acervo")
        }
    }
}
