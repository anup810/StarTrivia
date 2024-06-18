//
//  StarShipVC.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-17.
//

import UIKit

class StarShipVC: UIViewController,PersonProtocol {
    var person : Person!
    var api = StarShipAPI()
    var starships = [String]()
    var currentStarShip = 0

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var modelLabel: UILabel!
    
    @IBOutlet weak var makeLabel: UILabel!
    
    @IBOutlet weak var costLabel: UILabel!
    
    @IBOutlet weak var speedLabel: UILabel!
    
    @IBOutlet weak var lengthLabel: UILabel!
    
    @IBOutlet weak var previousBtn: FadeEnableBtn!
    
    @IBOutlet weak var nextBtn: FadeEnableBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)
        starships = person.starshipUrls
        nextBtn.isEnabled = starships.count > 1
        previousBtn.isEnabled = false
        guard let firstStarShip = starships.first else {return}
        getStarShip(url: firstStarShip)
        
       

    
    }
    
    func getStarShip(url:String){
        api.getStarShipAPI(url: url) { (starship) in
            if let starship = starship{
                self.UpdateUI(starship: starship)
                
            }
        }
    }
    
    func UpdateUI(starship:StarShip){
        nameLabel.text = starship.name
        modelLabel.text = starship.model
        makeLabel.text = starship.manufacturer
        costLabel.text = starship.cost
        speedLabel.text = starship.speed
        lengthLabel.text = starship.length
    }

    
    @IBAction func previousBtnClicked(_ sender: UIButton) {
        currentStarShip -= 1
        setButtonState()
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        currentStarShip += 1
        setButtonState()
    }
    func setButtonState(){
        if currentStarShip == 0 {
            previousBtn.isEnabled = false
        }else{
            previousBtn.isEnabled = true
        }
        if currentStarShip == starships.count - 1{
            nextBtn.isEnabled = false
        }else{
            nextBtn.isEnabled = true
        }
        getStarShip(url: starships[currentStarShip])
    }
    
}
