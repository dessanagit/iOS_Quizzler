//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Labels of views
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = ["Four + Two is equal to six",
    "Five - Three is greater than one",
    "Three + Eight is lesser than Ten"]

    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2* - call function to always update on viewLoad when triggered
        updateUI()
       
   }

    //Actions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1 // questionNumber = + 1
    // 2* - call function to update INDEX NUMBER as it increases, inside the array
        updateUI()
    }
    
    // 1* - function to update UI - Need this functionality many times to update the questions (viewDidLoad() will capture this) and ALSO increases the question number.
    func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
    
}

