//
//  TableViewCell.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-01-25.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgWorkout: UIImageView!
    
    @IBOutlet var workoutLabel: UILabel!
    
    func setWorkout(video: DataInfo)
    {
        imgWorkout.image = video.image
        workoutLabel.text = video.title
        
    }
    
    
    
}
