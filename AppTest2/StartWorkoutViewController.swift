//
//  StartWorkoutViewController.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-02-12.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import UIKit

class StartWorkoutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataOfExcersises: DataInfo?
    
    
    @IBOutlet weak var tableView: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        tableView.dataSource = self
        tableView.delegate = self
    
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let data = dataOfExcersises?.exerC{
            print(data.count)
            return data.count
        }
      
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let data1 = dataOfExcersises?.exerC![indexPath.row]
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "startWorkoutCell") as! StartWorkoutCell
        if let data = data1 {
            cell1.setStructureForExcersise(data: data)
        }
        print("Cell")
        return cell1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
    }
    
    

    
   
}

