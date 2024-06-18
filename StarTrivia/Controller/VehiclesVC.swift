//
//  VehiclesVC.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-17.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    var person : Person!

    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func nextClicked(_ sender: UIButton) {
    }
    @IBAction func previousClicked(_ sender: UIButton) {
    }
}
