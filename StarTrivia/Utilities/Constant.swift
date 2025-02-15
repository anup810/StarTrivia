//
//  Constant.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-12.
//

import UIKit
let BLACK_BG = UIColor.black.withAlphaComponent(0.67).cgColor

let URL_BASE = "https://swapi.dev/api/"
let PERSON_URL = URL_BASE + "people/"
typealias PersonResponseCompletion = (Person?) -> Void
typealias HomeworldResponseCompletion = (HomeWorld?) -> Void
typealias VehiclesResponseCompletion = (Vehicles?) -> Void
typealias StarShipResponseCompletion = (StarShip?) -> Void
typealias FilmResponseCompletion = (Film?) -> Void

