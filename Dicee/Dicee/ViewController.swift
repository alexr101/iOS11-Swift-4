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
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollBtnPressed(_ sender: UIButton) {
        randomDiceNum1 = Int( arc4random_uniform(6) )
        randomDiceNum2 = Int( arc4random_uniform(6) )
        
        print(randomDiceNum1)
        
    }
    


}

