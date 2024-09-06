//
//  GradientView.swift
//  SuperIOS
//
//  Created by Mañanas on 10/9/24.
//

import UIKit

class GradientView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemOrange.cgColor]
        layer.addSublayer(gradient)
        
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }

}
