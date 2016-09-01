//: Playground - noun: a place where people can play

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    func averageIsAbove75(grade1: Double, grade2: Double, grade3: Double) -> Bool {
        
        if ((grade1 + grade2 + grade3) / 3) > 75.0 {
            
            return true
            
        }     else {
            
            return false
        }
    }
    
    
    averageIsAbove75(55.0, grade2: 25, grade3: 24)
    
    averageIsAbove75(100, grade2: 85, grade3: 90)



