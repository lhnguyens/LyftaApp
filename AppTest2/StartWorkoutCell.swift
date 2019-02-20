//
//  StartWorkoutCell.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-02-14.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import UIKit

class StartWorkoutCell : UITableViewCell{
    
    
    @IBOutlet weak var labelForEachExcersise: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var setsLabel: UILabel!
    @IBOutlet weak var repsLabel: UILabel!
    @IBOutlet weak var repsRangeLabel: UILabel!
    @IBOutlet weak var whichSets: UILabel!
    
    
    @IBOutlet weak var checkBoxButton: UIButton!
    
    func setStructureForExcersise(data: Exercises){
        labelForEachExcersise.text = data.name.localized
        repsRangeLabel.text = data.reps
        setsLabel.text = "SETS"
        repsLabel.text = "REPS"
        whichSets.text = data.sets
        checkBoxButton.isSelected = data.checked
        setLabelToWhite()

        
        
    }
    
    func setLabelToWhite() {
        labelForEachExcersise.textColor = UIColor.white
    }
    

    

    

    
    
    
    
    
    
    
}
