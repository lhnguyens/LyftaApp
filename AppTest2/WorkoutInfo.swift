

import Foundation
import UIKit

class Exercises {
    
    var name: String
    var sets: String
    var reps: String
    var checked: Bool = false
    
    init(name: String,sets: String,reps:String) {
        self.name = name
        self.sets = sets
        self.reps = reps
    }
    
}
