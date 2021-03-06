//
//  storyBank.swift
//  Destini
//
//  Created by Alex Padilla JR on 11/12/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    
    lazy var story1 = Story(
    text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
    optionA: Option(text: "I\'ll hop in. Thanks for the help!", nextStory: self.story3, lastStory: false),
    optionB: Option(text: "Better ask him if he\'s a murderer first.", nextStory: self.story2, lastStory: false))
    
    lazy var story2 = Story(text: "He nods slowly, unphased by the question.", optionA: self.answer2a, optionB: self.answer2b)
    lazy var story3 = Story(text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", optionA: answer3a, optionB: answer3b)
    lazy var story4 = Story(text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?")
    lazy var story5 = Story(text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.")
    lazy var story6 = Story(text: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"")
    
    
    
    lazy var answer2a = Option(text: "At least he\'s honest. I\'ll climb in.", nextStory: story3, lastStory: false)
    lazy var answer2b = Option(text: "Wait, I know how to change a tire.", nextStory: story4, lastStory: false)
    
    lazy var answer3a = Option(text: "I love Elton John! Hand him the cassette tape.", nextStory: story6, lastStory: true)
    lazy var answer3b = Option(text: "It\'s him or me! You take the knife and stab him.", nextStory: story5, lastStory: true)
    
    init(){
    }
    
}
