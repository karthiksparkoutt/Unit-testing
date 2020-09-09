//
//  TestCaseDemoTests.swift
//  TestCaseDemoTests
//
//  Created by Karthik Rajan T  on 08/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import XCTest
import UIKit
@testable import TestCaseDemo

class TestCaseDemoTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_validateEmail () {
        let sampleLogin = "macbook@gmail.com"
        XCTAssertTrue(ViewController.access.validateEmailId(emailID: sampleLogin))
    }
    func test_validateNumber () {
        let sampleNumber = "1234567890"
        XCTAssertTrue(ViewController.access.validaPhoneNumber(phoneNumber: sampleNumber))
    }
    func test_validatePassword () {
        let samplePassword = "Password123456"
        XCTAssertTrue(ViewController.access.validatePassword(password: samplePassword))
    }
    func test_validatePassword () {
        let sampleName = "Mackbook"
        XCTAssertTrue(ViewController.access.validateName(name: sampleName))
    }
    
    
    
}
