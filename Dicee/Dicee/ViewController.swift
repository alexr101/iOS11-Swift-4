//
//  ViewController.swift
//  Dicee
//
//  Created by Alex Padilla JR on 11/5/17.
//  Copyright © 2017 Alex Padilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceNum1 : Int = 0
    var randomDiceNum2 : Int = 0
    
    @IBOutlet weak var UIDiceImage1: UIImageView!
    @IBOutlet weak var UIDiceImage2: UIImageView!
    
    let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollBtnPressed(_ sender: UIButton) {
        updateDiceImage()
    }
    
    func updateDiceImage(){
        randomDiceNum1 = Int( arc4random_uniform(6) )
        randomDiceNum2 = Int( arc4random_uniform(6) )
        
        UIDiceImage1.image = UIImage(named: diceArr[randomDiceNum1])
        UIDiceImage2.image = UIImage(named: diceArr[randomDiceNum2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }


}

