struct AppleMusicResponse: Codable {
    let data: [MusicData]
}

struct MusicData: Codable, Identifiable {
    let id: String
    let type: String
    let href: String
}
