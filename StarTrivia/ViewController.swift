//
//  ViewController.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-12.
//

import UIKit

class ViewController: UIViewController {
    var personApi = PersonAPi()

    override func viewDidLoad() {
        super.viewDidLoad()
        personApi.getRandomPersonUrlSession()
      
       

    }


}

