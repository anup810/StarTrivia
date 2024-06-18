//
//  StarShipAPI.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-18.
//

import Foundation
import Alamofire

class StarShipAPI{
    func getStarShipAPI(url:String, completion: @escaping StarShipResponseCompletion){
        guard let url = URL(string: url) else {return}
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.error{
                debugPrint(error.localizedDescription)
                completion(nil)
            }
            guard let data = response.data else {return completion(nil)}
            let jsonDecoder = JSONDecoder()
            do{
                let starShip = try jsonDecoder.decode(StarShip.self, from: data)
                completion(starShip)
                
            }catch{
                debugPrint(error.localizedDescription)
                completion(nil)
            }
        }
    }
}
