//
//  VCTests.swift
//  AllTheBasics
//
//  Created by James Campagno on 6/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


import Quick
import Nimble
@testable import AllTheBasics



class VCTests: QuickSpec {
    
    override func spec() {
        
        let testVC = ViewController()
        
        
        describe("averageIsAbove75(_:b:c:)") {
            it("Takes three numbers and, if their average is over 75, returns true, otherwise returns false") {
                
                expect( testVC.averageIsAbove75( 76.0, b: 75.0, c: 71.9 )).to(equal(false))    // NOTE we might want to get specific about the precision & rounding they should use (eg. is 75.4 > 75?  75.4 is *definitely* greater than 75.0)
                
                expect( testVC.averageIsAbove75( 75.0, b: 75.0, c: 75.0 )).to(equal(false))    // must be *OVER* 75
                
                expect( testVC.averageIsAbove75( 75.1, b: 75.0, c: 75.0 )).to(equal(true))   // they should be using Doubles, so this is *just* over 75
                
                expect( testVC.averageIsAbove75( 80.0, b: 80.0, c: 80.0 )).to(equal(true))
            }
        }
        
        
        describe("passwordCombo(_:password:)") {
            it("Takes a String and an Int.  If the String is equal to Jerry, Elaine or Michael, AND the Int is evenly divisible by 3, then it returns true, otherwise it returns false") {
                
                expect(testVC.passwordCombo( "Jose", password: 3)).to(equal("Access Denied"))   // bad name
                
                expect(testVC.passwordCombo( "Elain", password: 3)).to(equal("Access Denied"))   // slight misspelled name
                
                expect(testVC.passwordCombo( "Jerry", password: 4)).to(equal("Access Denied"))   // bad number
                
                expect(testVC.passwordCombo( "Jose", password: 4)).to(equal("Access Denied"))   // bad name and bad number
                
                expect(testVC.passwordCombo( "Jerry", password: 3)).to(equal("Welcome!"))
                
                expect(testVC.passwordCombo( "Elaine", password: 6)).to(equal("Welcome!"))
                
                expect(testVC.passwordCombo( "Michael", password: 21)).to(equal("Welcome!"))
                
                expect(testVC.passwordCombo( "Michael", password: 0)).to(equal("Welcome!"))
            }
        }

        
    }
    
}





