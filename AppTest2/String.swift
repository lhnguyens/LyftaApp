//
//  String.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-02-20.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
