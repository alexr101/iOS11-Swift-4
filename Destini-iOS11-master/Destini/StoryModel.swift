//
//  StoryModel.swift
//  Destini
//
//  Created by Alex Padilla JR on 11/12/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    var text: String
    let optionA: Option?
    let optionB: Option

    init(text: String, optionA: Option?, optionB: Option?) {
        self.text = text
        self.optionA = optionA!
        self.optionB = optionB!

    }
}
