//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Dessana Santos on 02/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//


// ***** ====== THIS FILE HANDLE WITH ALL THE DATA ====== *****

import Foundation

struct QuizBrain {
    
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
    var scoreNumber = 0
    
    // METHOD to check the question logic
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
            ////External      Internal parameters name. If _ is used as external parameters name, it's not necessary to "self express" it as an output when using the method.
        if userAnswer == quiz[questionNumber].answer {
            scoreNumber += 1
            return true
        } else {
            return false
        }
    }
    
    
    mutating func getQuestionText() -> String {
        
        // ---- Debugging app to not crash when reaching last answer
                                //// Count - The number of elements in the collection
        if questionNumber + 1 < quiz.count {
            questionNumber += 1 // questionNumber = + 1 -> increases questionNumber by 1.
            
        } else {
            questionNumber = 0 //reset quiz as soon it reaches the last question
        }
        
        return quiz[questionNumber].text //// quiz[questionNumber] -> Index of each Question(), inside the collection ( [] ), followed by the access of the respective text (property).
        
    }
    
    
    func getProgress() -> Float {
        // Increases the Progress Bar per question
       return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    // METHOD to track the RIGHT answers
    mutating func getScore() -> Int {
        
        if scoreNumber < quiz.count {
            return scoreNumber
        } else {
            scoreNumber = 0
            return scoreNumber
        }
       
    }
}
