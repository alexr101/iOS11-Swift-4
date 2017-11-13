//
//  storyBank.swift
//  Destini
//
//  Created by Alex Padilla JR on 11/12/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    
    let story1: Story

    
    let story2: Story
    let answer2a: Option
    let answer2b: Option
    
    let story3: Story
    let answer3a: Option
    let answer3b: Option
    
    let story4: Story
    let story5: Story
    let story6: Story
    
    init(){
        self.story1 = Story(
            text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
            optionA: Option(text: "I\'ll hop in. Thanks for the help!", nextStory: story2, lastStory: false),
            optionB: Option(text: "Better ask him if he\'s a murderer first.", nextStory: story3, lastStory: false))
        
        self.story2 = Story(text: "He nods slowly, unphased by the question.", optionA: answer2a, optionB: answer2b)
        self.story3 = Story(text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", optionA: answer3a, optionB: answer3b)
        self.story4 = Story(text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", optionA: nil, optionB: nil)
        self.story5 = Story(text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", optionA: nil, optionB: nil)
        self.story6 = Story(text: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"", optionA: nil, optionB: nil)
        

        
        self.answer2a = Option(text: "At least he\'s honest. I\'ll climb in.", nextStory: story4, lastStory: false)
        self.answer2b = Option(text: "Wait, I know how to change a tire.", nextStory: story5, lastStory: false)
        
        self.answer3a = Option(text: "I love Elton John! Hand him the cassette tape.", nextStory: story5, lastStory: true)
        self.answer3b = Option(text: "It\'s him or me! You take the knife and stab him.", nextStory: story6, lastStory: true)
        
    }
    
}
