//
//  HomeWorldVC.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-17.
//

import UIKit

class HomeWorldVC: UIViewController, PersonProtocol {
    var person : Person!
    var api = HomeWorldApi()

    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var terrainLabel: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)
        api.getHomeWorldApi(url: person.homeWorldUrl) { (homeworld) in
            if let homeworld = homeworld{
                self.setupUI(homeworld: homeworld)
            }
            
        }

      
    }
    func setupUI(homeworld: HomeWorld){
        nameLabel.text = homeworld.name
        climateLabel.text = homeworld.climate
        terrainLabel.text = homeworld.terrain
        populationLabel.text = homeworld.population
    }
    

  
}
