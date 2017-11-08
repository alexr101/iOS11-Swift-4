//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController{
    var player:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let notePath = "note" + String(sender.tag)
        let ext = "wav"
        print(notePath + ext)
        
        playSound(name: notePath, withExt: ext)
    }
    
    func playSound(name: String, withExt: String) {
        let path = Bundle.main.path(forResource: name, ofType: withExt)!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            self.player = sound
            sound.numberOfLoops = 0
            sound.prepareToPlay()
            sound.play()
        } catch {
            print("error loading file")
            // couldn't load file :(
        }
        
    }
    
  

}

