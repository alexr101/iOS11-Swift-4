//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    let storyBank: StoryBank = StoryBank()
    var currentStory: Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(storyBank)
        
        currentStory = storyBank.story1
        
        updateStory()
    }

    func updateStory() {
        storyTextView.text = currentStory?.text
        topButton.setTitle(currentStory?.optionA!.text, for: .normal)
        bottomButton.setTitle(currentStory?.optionB.text, for: .normal)
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if(sender.tag == 1) {
            currentStory = currentStory?.optionA!.nextStory
        } else if (sender.tag == 2) {
            currentStory = currentStory?.optionB.nextStory
        }
        
        updateStory()
        
        
    
    }
    



}

