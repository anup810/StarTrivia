//
//  VehiclesAPI.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-18.
//

import Foundation
import Alamofire

class VehiclesAPI{
    func getVehiclesAPI(url:String, completion:@escaping VehiclesResponseCompletion){
        guard let url = URL(string: url) else {return}
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.error{
                debugPrint(error.localizedDescription)
                completion(nil)
                return
            }
            guard let data = response.data else{return completion(nil)}
            let jsonDecoder = JSONDecoder()
            do{
                let vehicles = try jsonDecoder.decode(Vehicles.self, from: data)
                completion(vehicles)
            
                
            }catch{
                debugPrint(error.localizedDescription)
                completion(nil)
                
            }
        }
       
        
    }
}
