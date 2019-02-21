//
//  MenuController.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-01-20.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import Foundation
import UIKit



class MenuController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var pushExcersisesArray: [Exercises] = [
        Exercises(name: "Barbell Bench Press", sets: "3", reps: "4"),
        Exercises(name: "Dumbell Seated Shoulder Press", sets: "3", reps: "8-10"),
        Exercises(name: "Weighted Dip", sets: "3", reps: "6-10"),
        Exercises(name: "Low-to-high Cable Flye", sets: "3", reps: "12-15" ),
        Exercises(name: "Dumbell Isolateral Skull Crusher", sets: "3", reps: "12"),
        Exercises(name: "Dumbell Lateral Raise", sets: "3", reps: "15"),
        Exercises(name: "Ab Wheel Rollout", sets: "3", reps: "6")
    ]
    
    var pullExcersisesArray: [Exercises] = [
        Exercises(name: "1 Arm Lat Pull-in", sets: "2", reps: "15-20"),
        Exercises(name: "Pull-up", sets: "4", reps: "6-8"),
        Exercises(name: "Pendlay Row", sets: "3", reps: "8-10"),
        Exercises(name: "Machine High Row", sets: "3", reps: "10-12"),
        Exercises(name: "Seated Face Pull", sets: "3", reps: "20"),
        Exercises(name: "Reverse Grip Ez Bar Curl", sets: "3", reps: "20"),
        Exercises(name: "Supinated Ez Bar Curl", sets: "3", reps: "15"),
        Exercises(name: "Dumbell Preacher Curl", sets: "3", reps: "12")
    ]
    
    var legsExcersisesArray: [Exercises] = [
        Exercises(name: "Back Squat", sets: "4", reps: "5"),
        Exercises(name: "Deadlift", sets: "2", reps: "8"),
        Exercises(name: "Barbell Hip Thrust", sets: "3", reps: "10-12"),
        Exercises(name: "Dumbell Walking Lunge", sets: "2", reps: "20 Each Leg"),
        Exercises(name: "Leg Extension", sets: "3", reps: "15"),
        Exercises(name: "Seated Leg Curl", sets: "3", reps: "15"),
        Exercises(name: "Standing Calf Raises",sets: "3", reps: "10")
    ]
    
    var myIndex = 0
    
    var imagesMenu: [DataInfo] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let segueID = "segueToOverview"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagesMenu = createArray()
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = UIColor(red: 231.0/255, green: 0.0/255, blue: 65.0/255, alpha: 1.0)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToOverview"{
            if let destVC = segue.destination as? WorkoutViewController {
                destVC.dataInfo =  imagesMenu[myIndex]
            }
        }
    }
    
    
    func createArray() -> [DataInfo]{
        
        let workout1 = DataInfo(image: #imageLiteral(resourceName: "imagesimport2"), title: "Push Workout", overviewImageName: "WorkoutImagePush", exerC: pushExcersisesArray)
        let workout2 = DataInfo(image: #imageLiteral(resourceName: "liftingpic3"), title: "Pull Workout", overviewImageName: "WorkoutImagePull", exerC: pullExcersisesArray)
        let workout3 = DataInfo(image: #imageLiteral(resourceName: "liftingpic2"), title: "Leg Workout", overviewImageName: "WorkoutImageLegs", exerC: legsExcersisesArray)
        
        return[workout1, workout2, workout3]
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesMenu.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = imagesMenu[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! TableViewCell
        cell.setWorkout(video: video)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segueToOverview", sender: self)
    }
}

