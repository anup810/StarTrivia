//
//  StarShipVC.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-17.
//

import UIKit

class StarShipVC: UIViewController,PersonProtocol {
    var person : Person!

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

}