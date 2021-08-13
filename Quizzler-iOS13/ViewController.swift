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
    
    //2D Array -> array[i][j]
    let quiz = [["Four + Two is equal to six", "True"],
    ["Five - Three is greater than one", "True"],
    ["Three + Eight is lesser than Ten", "False"]]

    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2* - call function to always update on viewLoad when triggered
        updateUI()
       
   }

    //Actions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        //Create If Statement to check answers
        
        var userAnswer = sender.currentTitle //True, False
        var actualAnswer = quiz[questionNumber][1] //all answers is in COLUMN ONE
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
                                    // Count - The number of elements in the array
        if questionNumber + 1 < quiz.count {
            questionNumber += 1 // questionNumber = + 1
        } else {
            print(questionNumber)
        }
        
    // 2* - call function to update INDEX NUMBER as it increases, inside the array
        updateUI()
    }
    
    // 1* - function to update UI - Need this functionality many times to update the questions (viewDidLoad() will capture this) and ALSO increases the question number.
    func updateUI() {
                                    // [i]       [j]
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

