//
//  TestCaseDemoTests.swift
//  TestCaseDemoTests
//
//  Created by Karthik Rajan T  on 08/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import XCTest
@testable import TestCaseDemo

class TestCaseDemoTests: XCTestCase {
    var viewController: ViewController!

    override func setUp() {
        viewController = ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNumberOfVowelsInString_ShouldReturnNumberOfVowels() {
        let string = "karthi"
        let numberOfVowels = viewController.numberOfVowelsInString(string: string)

        XCTAssertEqual(numberOfVowels, 2, "should find 2 vowels in karthi")    }
    

}
