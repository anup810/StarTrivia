//
//  ViewController.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-12.
//

import UIKit

class ViewController: UIViewController {
    var personApi = PersonAPi()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var homeWorldBtn: UIButton!
    @IBOutlet weak var vehiclesBtn: UIButton!
    @IBOutlet weak var starShipBtn: UIButton!
    @IBOutlet weak var filmsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initial button states
        homeWorldBtn.isEnabled = false
        vehiclesBtn.isEnabled = false
        starShipBtn.isEnabled = false
        filmsBtn.isEnabled = false
        

    }

    @IBAction func randomClick(_ sender: UIButton) {
        let random = Int.random(in: 1...87)
        personApi.getRandomPersonAlamo(id: random) { (person) in
            if let person = person {
                DispatchQueue.main.async {
                    self.setupView(person: person)
                }
            }
        }
    }
    
    func setupView(person: Person) {
        nameLabel.text = person.name
        heightLabel.text = person.height
        massLabel.text = person.mass
        hairLabel.text = person.hair
        birthYearLabel.text = person.birthYear
        genderLabel.text = person.gender
        
        homeWorldBtn.isEnabled = !person.homeWorldUrl.isEmpty
        vehiclesBtn.isEnabled = !person.vehicleUrls.isEmpty
        starShipBtn.isEnabled = !person.starshipUrls.isEmpty
        filmsBtn.isEnabled = !person.filmUrls.isEmpty
        

    }
    

    
    @IBAction func homeWorldClicked(_ sender: UIButton) {
       
    }
    
    @IBAction func vehiclesClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func startShipClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func filmsClicked(_ sender: UIButton) {
       
    }
}
