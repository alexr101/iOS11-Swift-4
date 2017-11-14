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
        
        currentStory = storyBank.story1
        
        updateStory()
    }
    
    func showButtons() {
        topButton.isHidden = false
        bottomButton.isHidden = false
    }
    

    func updateStory() {
        storyTextView.text = currentStory?.text
        showButtons()
        
        if let buttonTxt = currentStory?.optionA?.text {
            topButton.setTitle(buttonTxt, for: .normal)
        } else {
            topButton.isHidden = true
        }
        
        if let buttonTxt = currentStory?.optionB?.text {
            bottomButton.setTitle(buttonTxt, for: .normal)
        } else {
            bottomButton.isHidden = true
        }
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if(sender.tag == 1) {
            currentStory = currentStory?.optionA!.nextStory
        } else if (sender.tag == 2) {
            currentStory = currentStory?.optionB!.nextStory
        }
        
        updateStory()
        
        
    
    }
    



}

