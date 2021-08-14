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
    
    
    // ---- Substituting the 2D Array -> Collection with a Structure
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
                Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                Question(q: "Google was originally called 'Backrub'.", a: "True"),
                Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
]

    //// Variable to help keep tracking quiz collection
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 2* - call function to always update on viewLoad when triggered
        updateUI()
       
   }

    //Actions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        // ---- Create If Statement to check answers
       
        var userAnswer = sender.currentTitle //True, False
        // var actualQuestion = quiz[questionNumber]
        var actualAnswer = quiz[questionNumber].answer //accessing answer
                            //// quiz[questionNumber] -> Index of each Question(), inside the collection ( [] ), followed by the access of the respective answer (property).
        //Checking answers
        if userAnswer == actualAnswer {
            sender.backgroundColor = .green
            sender.layer.cornerRadius = 20
        } else {
            sender.backgroundColor = .red
            sender.layer.cornerRadius = 20
        }
        
        // ---- Debugging app to not crash when reaching last answer
                                //// Count - The number of elements in the collection
        if questionNumber + 1 < quiz.count {
            questionNumber += 1 // questionNumber = + 1 -> increases questionNumber by 1.
        } else {
            questionNumber = 0 //reset quiz as soon it reaches the last question
        }
        
    // 2* - call function to update INDEX NUMBER as it increases, inside the array
        updateUI()
    }
    
    // 1* - function to update UI - Need this functionality many times to update the questions (viewDidLoad() will capture this) and ALSO increases the question number.
    func updateUI() {
                
        questionLabel.text = quiz[questionNumber].text
                            //// quiz[questionNumber] -> Index of each Question(), inside the collection ( [] ), followed by the access of the respective text (property).
        
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
