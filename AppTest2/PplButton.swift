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
        backgroundColor     =  UIColor(red: 224/255.0, green: 210/255.0, blue: 187/255.0, alpha: 1)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.black, for: .normal)
        
        
    }
}
