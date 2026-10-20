//
//  ItuneResponse.swift
//  TopMusic-global
//
//  Created by HENRIQUE SILVA PEREIRA DOS SANTOS on 20/10/26.
//

import Foundation

struct ITunesResponse: Codable {
    let resultCount: Int
    let results: [ITunesResult]
}
struct ITunesResult: Codable {
    let wrapperType: String?
    let artistId: Int?
    let collectionId: Int?
    let collectionName: String?
    let artworkUrl100: String?
    let releaseDate: String?
    let trackCount: Int?
    
    let trackId: Int?
    let trackName: String?
    let previewUrl: String?
}
