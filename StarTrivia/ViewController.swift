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
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

    }

    @IBAction func randomClick(_ sender: UIButton) {
        let random = Int.random(in: 1...87)
        personApi.getRandomPersonUrlSession(id: random) { (person) in
            if let person = person{
                self.nameLabel.text = person.name
                self.heightLabel.text = person.height
                self.massLabel.text = person.mass
                self.hairLabel.text = person.hair
                self.birthYearLabel.text = person.birthYear
                self.genderLabel.text = person.gender
                
            }
        }

    }
    
}

