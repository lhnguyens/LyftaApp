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
            cell1.selectionStyle = .none
            cell1.checkBoxButton.addTarget(self, action: #selector(checkMarkButtonClicked(sender: )), for: .touchUpInside)
        }
        print("Cell")
        
        return cell1
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
    
    @objc func checkMarkButtonClicked (sender: UIButton) {
        //Testa button om den registeras
        print("button pressed")
        
        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseInOut, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }) { (success) in
            sender.isSelected = !sender.isSelected
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseInOut, animations: {
                sender.transform = .identity
            }, completion: nil)
        }
        
//        if sender.isSelected {
//            sender.isSelected = false
//        } else {
//            sender.isSelected = true
//        }
    }
    
    
    
    
    
    
    
    
}

