//
//  PersonApi.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-12.
//

import Foundation
import Alamofire
class PersonAPi{
    //Web Request with Alamofire
    
    func getRandomPersonAlamo(id:Int, comletion: @escaping PersonResponseCompletion){
        guard let url = URL(string: "\(PERSON_URL)\(id)") else {return}
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.result.error{
                debugPrint(error.localizedDescription)
                comletion(nil)
                return
            }
            
            
            guard let json = response.result.value as? [String:Any] else { return
                comletion(nil)}
            let person = self.parsePersonManual(json: json)
            comletion(person)
        }
        
        
    }
    
    // WEB Request with URL Session
    func getRandomPersonUrlSession(id:Int, comletion: @escaping PersonResponseCompletion){
        
        
        guard let url = URL(string: "\(PERSON_URL)\(id)") else {return}
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else{
                debugPrint(error.debugDescription)
                comletion(nil)
                return
            }
            guard let data = data else{return}
            
            do{
                let jsonAny = try JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonAny as? [String:Any] else {return}
               let person = self.parsePersonManual(json: json)
                DispatchQueue.main.async {
                    comletion(person)

                }
            }
            catch{
                debugPrint(error.localizedDescription)
            }
            
        }
        task.resume()
    }
    
    private func parsePersonManual(json: [String:Any]) -> Person{
//        let id = json["id"] as? String ?? ""
        let name = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let mass = json["mass"] as? String ?? ""
        let hair = json["hair_color"] as? String ?? ""
        let birthYear = json["birth_year"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        let homeworldUrl = json["homeworld"] as? String ?? ""
        let filmUrls = json["films"] as? [String] ?? [String] ()
        let vehicleUrls = json["vehicles"] as? [String] ?? [String] ()
        let starshipUrls = json["starships"] as? [String] ?? [String] ()
        
        
        
        return Person(name: name, height: height, mass: mass, hair: hair, birthYear: birthYear, gender: gender, homeWorldUrl: homeworldUrl, filmUrls: filmUrls, vehicleUrls: vehicleUrls, starshipUrls: starshipUrls)
        
    }
}
