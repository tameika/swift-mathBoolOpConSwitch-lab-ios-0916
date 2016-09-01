//
//  ViewController.swift
//  AllTheBasics
//
//  Created by James Campagno on 6/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//



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


//    func username(name: String) -> Bool {
//        
//        switch name {
//            
//        case name("Jerry"):
//            
//            return true
//            
//        case name("Elaine"):
//            
//            return true
//            
//        case name("Michael"):
//            
//            return true
//            
//        default:
//            
//            return false
//            
//        }
//        
//    }
    

    
    
//    func password(passWordEntry: Int) -> Bool {
//        
//        if passWordEntry == (passWordEntry % 3) {
//            
//            return true
//        }
//            
//        else {
//            return false
//            
//        }
    
        
//    }
    
    func passwordCombo(username: String, password: Int) -> String {
        
        let goodPassword = (password % 3 == 0)
        
        if username == "Elaine" && goodPassword || username == "Jerry" && goodPassword || username == "Michael" && goodPassword {
        
        return "Welcome!"
            
        }

        else {
            
            return "Access Denied"
        }

}
}


func numberGenerator(a: String, b: Float) -> Float {
    
    ((b >= 10.5) && ( b <= 15.0)) || ((b >= 20.0) && (b <= 30.5))
    
    if a == "1" {
        
        return Float(1 * b)
        
    } else if a == "2" {
        
        return Float(2 * b)
        
    } else if a == "3" {
        
        return Float(3 * b)
        
    } else if a == "4" {
        
        return Float(4 * b)
        
    } else if a == "5" {
        
        return Float(5 * b)
        
    } else {
        
        
        return 0.0
        
    }
    
}






















