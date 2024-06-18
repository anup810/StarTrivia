//
//  StarShip.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-18.
//

import Foundation
struct StarShip: Codable {
    let name: String
    let model:String
    let manufacturer: String
    let cost: String
    let length: String
    let speed: String
    
    enum CodingKeys:String,CodingKey{
        case name
        case model
        case manufacturer
        case cost = "cost_in_credits"
        case length
        case speed = "max_atmosphering_speed"
    }
}
