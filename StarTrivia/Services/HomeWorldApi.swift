//
//  HomeWorldApi.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-18.
//

import Foundation
import Alamofire

class HomeWorldApi{
    func getHomeWorldApi(url:String , completion: @escaping HomeworldResponseCompletion){
        guard let url = URL(string: url) else {return}
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.result.error{
                debugPrint(error.localizedDescription)
                completion(nil)
                return
            }
            guard let data = response.data else{return completion(nil)}
            
            let jsonDecoder = JSONDecoder()
            do{
                let homeWorld = try jsonDecoder.decode(HomeWorld.self, from: data)
                completion(homeWorld)
                
            }catch{
                debugPrint(error.localizedDescription)
                completion(nil)
                
            }

        }
    }
    
}
