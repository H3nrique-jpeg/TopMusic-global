//
//  artista.swift
//  TopMusic-global
//
//  Created by HENRIQUE SILVA PEREIRA DOS SANTOS on 20/10/26.
//


struct Artista: Identifiable {
    let id: Int
    let nome: String
    let albuns: [Album]
    let musica: [Musica]
}
