//
//  Film.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-10-18.
//

import Foundation
import Foundation

struct Film : Codable {
    let title: String
    let episode: Int
    let crawl: String
    let director: String
    let producer: String
    let releaseData: String
    
    enum CodingKeys: String, CodingKey {
        case title
        case episode = "episode_id"
        case director
        case crawl = "opening_crawl"
        case producer
        case releaseData = "release_date"
    }
}
