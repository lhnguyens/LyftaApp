//
//  PplButton.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-01-20.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import Foundation
import UIKit

class PplButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        backgroundColor     =  UIColor(red: 231.0/255, green: 0.0/255, blue: 65.0/255, alpha: 1.0)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.white, for: .normal)
        
        
    }
}
