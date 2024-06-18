//
//  VehiclesVC.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-17.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    var person : Person!
    var api = VehiclesAPI()
    var vehicle = [String]()
    var currentVehicles = 0
    
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vehicle = person.vehicleUrls
        nextBtn.isEnabled = vehicle.count > 1
        previousBtn.isEnabled = false
        setButtonTitleColors()
        
        guard let firstVehicles = vehicle.first else {return}
        getVehicles(url: firstVehicles)
        
        
        
    }
    func getVehicles(url:String){
        api.getVehiclesAPI(url: url) { (vehicles) in
            if let vehicles = vehicles{
                self.setupView(vehicles: vehicles)
                
            }
        }
    }
    
    func setupView(vehicles: Vehicles){
        nameLabel.text = vehicles.name
        modelLabel.text = vehicles.model
        makeLabel.text = vehicles.manufacturer
        costLabel.text = vehicles.cost
        speedLabel.text = vehicles.speed
        lengthLabel.text = vehicles.length
    }
    
    
    
    
    @IBAction func nextClicked(_ sender: UIButton) {
        currentVehicles += 1
        setButtonState()
        print(vehicle[currentVehicles])
    }
    @IBAction func previousClicked(_ sender: UIButton) {
        currentVehicles -= 1
        setButtonState()
        print(vehicle[currentVehicles])
    }
    
    func setButtonState(){
        if currentVehicles == 0 {
            previousBtn.isEnabled = false
        }else{
            previousBtn.isEnabled = true
        }
        if currentVehicles == vehicle.count - 1{
            nextBtn.isEnabled = false
        }else{
            nextBtn.isEnabled = true
        }
        getVehicles(url: vehicle[currentVehicles])
    }
    func setButtonTitleColors() {
        nextBtn.setTitleColor(.lightGray, for: .disabled)
        previousBtn.setTitleColor(.lightGray, for: .disabled)
    }
}
