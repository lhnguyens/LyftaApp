//
//  CellData.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-02-12.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import Foundation


class CellData {
    var openOrClosed: Bool
    var title: String
    var sectionInfo = [String]()
    
    init(openOrClosed: Bool, title: String, sectionInfo: [String] ) {
        self.openOrClosed = openOrClosed
        self.title = title
        self.sectionInfo = sectionInfo
    }
}
