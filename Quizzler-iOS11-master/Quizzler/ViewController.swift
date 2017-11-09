//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNum: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstQuestion = allQuestions.list[questionNum]
        
        questionLabel.text = firstQuestion.questionText
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if (sender.tag == 1) {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        
        if( checkAnswer( answer: pickedAnswer ) ) {
            nextQuestion()
        } else {
            print("wrong")
        }
    }
    
    
    func updateUI() {
        
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer( answer: Bool ) -> Bool {
        return allQuestions.list[questionNum].answer == pickedAnswer
    }
    
    
    func startOver() {
       
    }
    

    
}
