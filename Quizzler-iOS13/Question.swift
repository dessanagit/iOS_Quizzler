//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Dessana Santos on 14/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

//Creating a Structure to substitute the 2D Array.

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
        
        //TEXT and ANSWER are not assigned with "self." (i.e: self.text = q) because the property names in init() are not the same as the constant (i.e: self.text = text)
    }
}
