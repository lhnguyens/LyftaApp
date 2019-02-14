//
//  DataInfo.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-01-25.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import Foundation
import UIKit

class DataInfo {
    var image: UIImage?
    var title: String?
    var overviewImageName: String?
    var exerC: [Exercises]?
    
    init(image: UIImage, title: String, overviewImageName: String, exerC: [Exercises]){
        self.image = image
        self.title = title
        self.overviewImageName = overviewImageName
        self.exerC = exerC
    }
}
