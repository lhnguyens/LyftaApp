//
//  StartWorkoutTableTableViewController.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-02-12.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import UIKit

class StartWorkoutTableTableViewController: UITableViewController {
    
    var testData: [CellData] = []
    
    
    @IBOutlet weak var finishWorkout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testData = createData()
        
        
    }
    
    func createData() -> [CellData] {
        
        let ex1 = CellData(openOrClosed: false, title: "Bench Press", sectionInfo: ["Set 1 Reps: 4", "Set 2 Reps: 5", "Set 3 Reps: 4"])
        let ex2 = CellData(openOrClosed: false, title: "Dumbell Press", sectionInfo: ["Set 1 Reps: 4", "Set 2 Reps: 5", "Set 3 Reps: 4"])
        
        return [ex1, ex2]
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return testData.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if testData[section].openOrClosed == true{
            return testData[section].sectionInfo.count + 1
        }
        else {
            return 1
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exCell" , for: indexPath ) as UITableViewCell
        
        if indexPath.row == 0 {
            cell.textLabel?.text = testData[indexPath.section].title
        }else{
            cell.textLabel?.text = testData[indexPath.section].sectionInfo[indexPath.row - 1]
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            if testData[indexPath.section].openOrClosed == true{
                testData[indexPath.section].openOrClosed = false
                let sections = IndexSet(integer: indexPath.section)
                tableView.reloadSections(sections, with: .fade)
            }
            else{
                testData[indexPath.section].openOrClosed = true
                let sections = IndexSet(integer: indexPath.section)
                tableView.reloadSections(sections, with: .fade)
            }
        }
    }
    
    
    
}
