//
//  ItuneService.swift
//  TopMusic-global
//
//  Created by HENRIQUE SILVA PEREIRA DOS SANTOS on 20/10/26.
//
import Foundation

class ITunesService {
    
    func buscarAlbuns(artistaId: Int) async throws -> [Album] {
        
        let urlString = "https://itunes.apple.com/lookup?id=\(artistaId)&entity=album&limit=200"
        
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        print(String(data: data, encoding: .utf8) ?? "Sem dados")
        
        return []
    }
}
func buscarAlbuns(artistaId: Int) async throws -> [Album] {
    
    let urlString = "https://itunes.apple.com/lookup?id=\(artistaId)&entity=album&limit=200"
    
    guard let url = URL(string: urlString) else {
        throw URLError(.badURL)
    }
    
    let (data, _) = try await URLSession.shared.data(from: url)
    
    let resposta = try JSONDecoder().decode(
        ITunesResponse.self,
        from: data
    )
    
    let albuns = resposta.results.compactMap { resultado -> Album? in
        
        guard
            let id = resultado.collectionId,
            let nome = resultado.collectionName,
            let capa = resultado.artworkUrl100,
            let releaseDate = resultado.releaseDate,
            let quantidade = resultado.trackCount
        else {
            return nil
        }
        
        let ano = String(releaseDate.prefix(4))
        
        return Album(
            id: id,
            nome: nome,
            capa: capa,
            ano: ano,
            quantidadeMusicas: quantidade
        )
    }
    
    return albuns
}
