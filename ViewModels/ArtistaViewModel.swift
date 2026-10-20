//
//  ArtistaViewModel.swift
//  TopMusic-global
//
//  Created by HENRIQUE SILVA PEREIRA DOS SANTOS on 20/10/26.
//

@Observable
class ArtistaViewModel {
    
    var albuns: [Album] = []
    var musicas: [Musica] = []
    
    private let service = ITunesService()
    
    func carregarDados() async {
       
    }
}
