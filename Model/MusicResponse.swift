//
//  MusicResponse.swift
//  TopMusic-global
//
//  Created by HENRIQUE SILVA PEREIRA DOS SANTOS on 09/10/26.
//

import Foundation

class MusicService {
    func fetchMusicData() async throws -> [MusicData] {
        // Substitua pela URL real da sua API
        guard let url = URL(string: "https://apple.com") else {
            throw URLError(.badURL)
        }
        
        // Faz a requisição
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        // Decodifica usando o model principal (AppleMusicResponse)
        let decodedResponse = try JSONDecoder().decode(AppleMusicResponse.self, from: data)
        
        // Retorna apenas a lista que está dentro da chave "data"
        return decodedResponse.data
    }
}
