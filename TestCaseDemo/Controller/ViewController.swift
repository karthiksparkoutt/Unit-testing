//
//  ViewController.swift
//  TestCaseDemo
//
//  Created by Karthik Rajan T  on 08/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var phoneTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var lblValidationMessage: UILabel!
    var validation = Validation()
    static let access = Validation()
    fileprivate func extractedFunc() {
        userNameTextfield.layer.cornerRadius = 2
        phoneTextfield.layer.cornerRadius = 2
        emailTextfield.layer.cornerRadius = 2
        passwordTextfield.layer.cornerRadius = 2
        loginButton.layer.cornerRadius = 2
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        extractedFunc()
    }
    @IBAction func loginButton(_ sender: Any) {
        login()
    }
    func login() {
        guard let name = userNameTextfield.text, let email = emailTextfield.text, let password = passwordTextfield.text,
            let phone = phoneTextfield.text else {
                return
        }
        let isValidateName = self.validation.validateName(name: name)
        if (isValidateName == false) {
            print("Incorrect Name")
            return
        }
        let isValidateEmail = self.validation.validateEmailId(emailID: email)
        if (isValidateEmail == false) {
            print("Incorrect Email")
            return
        }
        let isValidatePass = self.validation.validatePassword(password: password)
        if (isValidatePass == false) {
            print("Incorrect Pass")
            return
        }
        let isValidatePhone = self.validation.validaPhoneNumber(phoneNumber: phone)
        if (isValidatePhone == false) {
            print("Incorrect Phone")
            return
        }
        if (isValidateName == true || isValidateEmail == true || isValidatePass == true || isValidatePhone == true) {
            print("Login SucessFully")
        }
    }
}

