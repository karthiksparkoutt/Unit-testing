//
//  ViewController.swift
//  TestCaseDemo
//
//  Created by Karthik Rajan T  on 08/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func numberOfVowelsInString(string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I",
                                   "O", "U"]
        var numberOfVowels = 0
        for character in string {
            if vowels.contains(character) {
                numberOfVowels += 1
            } }
        return numberOfVowels
    }
    
    func makeHeadline(string: String) -> String {
        let words = string.components(separatedBy: " ")

        let headline = words.map { word -> String in
                var word = word
                let firstCharacter = word.remove(at: word.startIndex)
            
                return "\(String(firstCharacter).uppercased())\(word)"
            }.joined(separator: " ")
        return headline
    }
}
