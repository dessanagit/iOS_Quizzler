//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ---- Labels of views
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    // Variable to call the structure QuizBrain in order to use it in the code (below).
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 2* - call function to always update on viewLoad when triggered
        updateUI()
        
    }
    
    //Actions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        // ---- Create If Statement to check answers
        
        var userAnswer = sender.currentTitle! //True, False
        /// Because it known for sure there's an answer(values), it's ok to force to open it.
        
        //// using the structure to use the checkin logic. userAnswer is actually the variable seens above.
        var userGotItRight = quizBrain.checkAnswer(userAnswer) //It's not necessary to express the external property, because the output in the method is _.
        
        
        //Checking answers
        if userGotItRight {
            sender.backgroundColor = .green ////changes button color to green
            sender.layer.cornerRadius = 20
        } else {
            sender.backgroundColor = .red ////changes button color to red
            sender.layer.cornerRadius = 20
        }
        
        
        // 2* - call function to update INDEX NUMBER as it increases, inside the array
        updateUI()
    }
    
    // 1* - function to update UI - Need this functionality many times to update the questions (viewDidLoad() will capture this) and ALSO increases the question number.
    func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress =  quizBrain.getProgress()
        
        // Reset the color  of true and false button to original state
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's color back up to original color.
            self.trueButton.backgroundColor = .clear
            self.falseButton.backgroundColor = .clear
        }
        
    }
    
}


//*****2D ARRAY SCOPE*****

//    //2D Array -> array[i][j]
//    let quiz = [["Four + Two is equal to six", "True"],
//    ["Five - Three is greater than one", "True"],
//    ["Three + Eight is lesser than Ten", "False"]]
   
   // var questionNumber = 0
    
 //   override func viewDidLoad() {
    //    super.viewDidLoad()
        
        // 2* - call function to always update on viewLoad when triggered
       // updateUI()
       
 //  }

    //Actions
   // @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        //Create If Statement to check answers
        
        // var userAnswer = sender.currentTitle //True, False
        // var actualAnswer = quiz[questionNumber][1] //all answers is in COLUMN ONE
        
        
        //Checking answers
    //    if userAnswer == actualAnswer {
//            print("Right!")
//        } else {
//            print("Wrong!")
//        }
//
        
        // Debugging app to not crash when reaching last answer
                                    // Count - The number of elements in the array
//        if questionNumber + 1 < quiz.count {
//            questionNumber += 1 // questionNumber = + 1
//        } else {
//            questionNumber = 0 //reset quiz as soon it reaches the last question
//        }
        
    // 2* - call function to update INDEX NUMBER as it increases, inside the array
//        updateUI()
//    }
    
    // 1* - function to update UI - Need this functionality many times to update the questions (viewDidLoad() will capture this) and ALSO increases the question number.
//    func updateUI() {
//                                     // [i]       [j]
//        //questionLabel.text = quiz[questionNumber][0]
//    }
