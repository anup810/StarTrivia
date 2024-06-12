//
//  BlackBgView.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-12.
//

import UIKit

class BlackBgView: UIView {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
        
    }

    
}
class BlackBgButton: UIButton{
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
