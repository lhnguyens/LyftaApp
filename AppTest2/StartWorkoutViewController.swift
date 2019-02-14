//
//  StartWorkoutViewController.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-02-12.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import UIKit

class StartWorkoutViewController: UITableViewController {
    
    var dataForEachExcersise: DataInfo?
    var targetData:[CellData] = []
    
    
    @IBOutlet weak var nameOfTheExcersise: UILabel!
    @IBOutlet weak var setsLabel: UILabel!
    @IBOutlet weak var repsLabel: UILabel!
    @IBOutlet weak var whichSetsLabel: UILabel!
    @IBOutlet weak var repsRangeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }



    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return dataForEachExcersise!.exerC!.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 0
    }

    @IBAction func moreInfoAboutExcersise(_ sender: Any) {
    }
    
}
