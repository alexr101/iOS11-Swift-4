//
//  Question.swift
//  Quizzler
//
//  Created by Alex Padilla JR on 11/8/17.
//  Copyright © 2017 Alex Padilla. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
