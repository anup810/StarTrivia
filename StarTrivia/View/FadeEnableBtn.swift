//
//  FadeEnableBtn.swift
//  StarTrivia
//
//  Created by Anup Saud on 2024-06-17.
//



import UIKit

class FadeEnableBtn: UIButton {
    override var isEnabled: Bool {
        didSet {
            UIView.animate(withDuration: 0.2) {
                self.alpha = self.isEnabled ? 1.0 : 0.5
            }
        }
    }
}
