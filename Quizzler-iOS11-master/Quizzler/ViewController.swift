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
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if (sender.tag == 1) {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        
        if ( checkAnswer(answer: pickedAnswer) ) {
            nextQuestion()
        } else {
            print("wrong answer")
        }
        
        
        

    }
    
    func correctAnswer() {
        score += 1
        questionNum += 1
    }
    
    func updateUI() {
        questionLabel.text = allQuestions.list[questionNum].questionText
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNum+1) / \(allQuestions.list.count)"
        
        progressBar.frame.size.width = ( view.frame.size.width / CGFloat(allQuestions.list.count) ) * CGFloat( questionNum + 1 )
    }
    

    func nextQuestion() {
        
        if(allQuestions.list.count-1 != questionNum ){
            correctAnswer()
        } else {
            winAlert()
        }
        
        updateUI()
    }
    
    func winAlert() {
        let alert = UIAlertController(title: "Finished Quiz", message: "Do you want to start over?", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "Start Over", style: .default, handler: {(UIAlertAction) in
            self.startOver()
        })
        
        alert.addAction(restartAction)
        present(alert, animated: true, completion: nil)
    }
    
    func checkAnswer( answer: Bool ) -> Bool {
        return allQuestions.list[questionNum].answer == answer
    }
    
    
    func startOver() {
        questionNum = 0
        score = 0
        updateUI()
    }
    

    
}
