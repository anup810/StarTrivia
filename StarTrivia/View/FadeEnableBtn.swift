//
//  FadeEnableBtn.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-17.
//

import UIKit

class FadeEnableBtn : UIButton{
    override var isEnabled: Bool{
        didSet{
            if isEnabled {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 1.0
                }
                
            }else{
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 0.5
                    
                }
            }
        }
    }
}
