//
//  WorkoutViewController.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-02-05.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import UIKit

class WorkoutViewController: UIViewController {
    
    
    
    var dataInfo : DataInfo? //String //[DataInfo]
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var workoutOverviewImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setWorkoutImage()
       
       
        
    }
    
    func setWorkoutImage(){
     //   var picture: String = imageName?.description
        
        if let data = dataInfo {
            workoutOverviewImage.image = UIImage(named: data.overviewImageName!)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "start"{
            if let destVC = segue.destination as? StartWorkoutViewController {
                destVC.dataOfExcersises = dataInfo
                }
            }
        }
    }
    
    

