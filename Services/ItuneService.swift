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
