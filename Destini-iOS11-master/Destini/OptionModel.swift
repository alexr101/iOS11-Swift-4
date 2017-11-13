//
//  OptionModel.swift
//  Destini
//
//  Created by Alex Padilla JR on 11/12/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class Option {
    let text: String
    let nextStory: String
    let lastStory: Bool
    
    init(text: String, nextStory: String, lastStory: Bool) {
        self.text = text
        self.nextStory = nextStory
        self.lastStory = lastStory
    }
    
}
